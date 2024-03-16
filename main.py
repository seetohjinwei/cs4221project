from pkg.lexer import Lexer
from pkg.parser import Parser


def start(file_path):
    with open(file_path, "r") as file:
        sql_content = file.read()
    lexer = Lexer(sql_content)
    tokens = lexer.tokenize()
    # print(f"\nOutput from Lexer:\n{tokens}\n\n")

    parser = Parser()
    tables = parser.parse(tokens)
    print(*tables, sep='\n')

    return tables


def main():
    # file_path = 'schema_scripts/Le Tour 2023-schema.sql'
    # file_path = 'schema_scripts/AISSchema.sql'
    file_path = "schema_scripts/mondialSchema.sql"
    # file_path = "schema_scripts/weird.sql"
    queries = start(file_path)
    print("\nOutput from Parser:\n")
    # for query in queries:
    #     print('\n', query)


if __name__ == "__main__":
    main()
