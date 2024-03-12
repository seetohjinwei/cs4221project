from typing import Optional
import re

from .common import Constraint, Table, Token


class InvalidTableException(Exception):
    pass


class Parser:
    def identify_column_name(self, row: list[Token]) -> Optional[str]:
        """
        Extracts the column name from the row.
        """

        # print(row)

        first_token = row[0]
        token_type, _, _ = first_token
        if token_type != "IDENTIFIER":
            return None

        return first_token[1]

    def extract_expression(self, constraint: str) -> str:
        p = re.compile(r"CHECK \((.+)\)$")
        m = p.match(constraint)
        if m is None:
            # won't happen because lexer ignores `CHECK ()` <- without anything inside
            raise InvalidTableException("invalid CHECK constraint")

        expression = m.group(1)
        return expression

    def identify_constraint(self, row: list[Token]) -> Optional[Constraint]:
        """
        Handles column constraints and table constraints.

        Will be [CONSTRAINT <CONSTRAINT_NAME>] CHECK (<EXPRESSION>)
        """

        # just find the first CONSTRAINT / CHECK token
        constraint_name = None
        constraint = None
        for index, token in enumerate(row):
            token_type, _, _ = token
            if token_type == "CONSTRAINT":
                if index >= len(row) - 1:
                    raise InvalidTableException(
                        "CONSTRAINT must be followed by a token"
                    )

                next_token = row[index + 1]
                if next_token[0] != "IDENTIFIER":
                    raise InvalidTableException(
                        "CONSTRAINT must be followed by an identifier"
                    )
                constraint_name = next_token[1]
            elif token_type == "CHECK":
                constraint = token[1]

        if constraint is None:
            return None

        expression = self.extract_expression(constraint)
        return Constraint(constraint_name, expression)

    def parse_table(self, tokens: list[tuple]) -> Table:
        """
        Assumes a very simplistic CREATE TABLE statement:

        CREATE TABLE <TABLE_NAME> (

        );
        """

        if tokens[0][0] != "CREATE_TABLE":
            return Table("", [], [], is_table=False, tokens_if_not_table=tokens)

        table_name_index = 1
        if tokens[1][0] == "IF_NOT_EXISTS":
            table_name_index = 2
        if tokens[table_name_index][0] != "IDENTIFIER":
            raise InvalidTableException

        table_name = tokens[table_name_index][1]
        column_names: list[str] = []
        constraints: list[Constraint] = []

        # print(table_name)

        # skip table name and open parenthesis
        start_index = table_name_index + 1

        level_of_nestedness = 0
        row: list[Token] = []
        for token in tokens[start_index:]:
            token_type, _, _ = token
            if token_type == "OPEN_PAREN":
                level_of_nestedness += 1
                continue
            elif token_type == "CLOSE_PAREN":
                level_of_nestedness -= 1
                continue
            # print(level_of_nestedness, token_type, token[1])
            if level_of_nestedness == 1 and token_type == "COMMA":
                if column_name := self.identify_column_name(row):
                    column_names.append(column_name)
                if constraint := self.identify_constraint(row):
                    constraints.append(constraint)
                row = []
                continue
            row.append(token)

        if row:
            if column_name := self.identify_column_name(row):
                column_names.append(column_name)
            if constraint := self.identify_constraint(row):
                constraints.append(constraint)

        return Table(table_name, column_names, constraints)

    def parse(self, tokens: list[Token]) -> list[Table]:
        """
        Parses the list of tokens into a list of Table objects.

        Assumes that all statements are CREATE TABLE statements.
        """

        tables: list[Table] = []

        current_tokens: list[Token] = []
        for token in tokens:
            token_type, _, _ = token
            if token_type == "SEMICOLON":
                table = self.parse_table(current_tokens)
                tables.append(table)
                current_tokens = []
                continue
            current_tokens.append(token)

        if current_tokens:
            table = self.parse_table(current_tokens)
            tables.append(table)

        return tables
