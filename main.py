from pkg.lexer import Lexer
from pkg.parser import Parser
from pkg.translator import Translator


def start(file_path):
    with open(file_path, "r") as file:
        sql_content = file.read()
    lexer = Lexer(sql_content)
    tokens = lexer.tokenize()
    # print(f"\nOutput from Lexer:\n{tokens}\n\n")

    parser = Parser()
    tables = parser.parse(tokens)
    # print(*tables, sep="\n")

    # Remove check constraints from tokens for SQL schema regeneration
    filtered_tokens = parser.remove_check_constraints(tokens)
    # print(*filtered_tokens)

    translator = Translator()
    triggers = translator.generate_triggers(tables)
    ddl = translator.rebuild_create_tables(tokens)
    print(ddl)
    print(triggers)

    return tables


def main():
    # file_path = 'schema_scripts/Le Tour 2023-schema.sql'
    # file_path = 'schema_scripts/AISSchema.sql'
    file_path = "schema_scripts/mondialSchema.sql"
    # file_path = "schema_scripts/simple.sql"
    # file_path = "schema_scripts/weird.sql"
    queries = start(file_path)
    # print("\nOutput from Parser:\n")
    # for query in queries:
    #     print('\n', query)


if __name__ == "__main__":
    main()
