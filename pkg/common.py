from dataclasses import dataclass
from typing import Optional


Token = tuple[str, str, int]


@dataclass
class Constraint:
    constraint_name: Optional[str]
    expression: str


@dataclass
class Table:
    table_name: str
    column_names: list[str]  # for checking if a column exists
    constraints: list[Constraint]

    is_table: bool = True
    tokens_if_not_table: Optional[list[Token]] = (
        None  # only exists if this is not a table
    )
