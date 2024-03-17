from .common import Table, Token


class Translator:
    def generate_triggers(self, tables: list[Table]) -> str:
        """
        Generates triggers and respective trigger functions from parser output.
        """
        triggers = []
        for table in tables:
            for constraint in table.constraints:
                if not constraint.constraint_name:
                    # generate a name for the constraint if not provided
                    constraint.constraint_name = f"{table.table_name}_{hash(constraint.expression) % 100000}"  # hash the expression to get a unique name
                # Trigger syntax: Replace all mentions of a column in the check constraint expression and replace with NEW.column
                constraint_expression_with_new = constraint.expression
                for column in table.column_names:
                    constraint_expression_with_new = constraint_expression_with_new.replace(column, "NEW." + column)

                trigger = f'''
                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION {constraint.constraint_name}()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT ({constraint_expression_with_new}) THEN
                            RAISE EXCEPTION \'{constraint.constraint_name} constraint violated\';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER {constraint.constraint_name}_trigger
                    BEFORE INSERT OR UPDATE ON {table.table_name}
                    FOR EACH ROW
                    EXECUTE FUNCTION {constraint.constraint_name}();
                    ---------------
                '''
                triggers.append(trigger)

        trigger_code = '\n'.join(triggers)
        return trigger_code

    def rebuild_create_tables(self, filtered_tokens: list[Token], triggers: str) -> str:
        # Add a semicolon at the end of the tokens list if it's not already there
        if filtered_tokens[-1][1] != ";":
            filtered_tokens.append(("SEMICOLON", ";", -1))

        create_tables_code = ' '.join([t[1] for t in filtered_tokens])
        formatted_create_tables_code = create_tables_code.replace(";", ";\n")
        formatted_create_tables_code += f"\n\n{triggers}"
        return formatted_create_tables_code
