from pkg.lexer import Lexer
from pkg.parser import Parser
from pkg.translator import Translator
import sys
import getopt

def start(file_path, output_file):
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
    ddl = translator.rebuild_create_tables(filtered_tokens, triggers)
    # print(ddl)
    # print(triggers)

    with open(output_file, "w") as file:
        file.write(ddl)

    return tables

# takes in input and output from command line
def usage():
    print("usage: " + sys.argv[0] + " -i [input-file] -o [output-file]")
    print("example: " + sys.argv[0] + " -i input.sql -o output.sql")

input_file = output_file = None

try:
    options, args = getopt.getopt(sys.argv[1:], 'i:o:')
except getopt.GetoptError:
    usage()
    sys.exit(2)
for opt, arg in options:
    if opt == '-i':
        input_file = arg
    elif opt == '-o':
        output_file = arg
    else:
        usage()
        sys.exit(2)

if input_file == None or output_file == None:
    usage()
    sys.exit(2)

start(input_file, output_file)