import re

class Lexer:
    def __init__(self, schema):
        self.schema = schema
        self.position = 0
        self.tokens = []
        self.token_patterns = [
            (r'".*?"|\'.*?\'', "STRING"),  # Quoted strings
            (r'\b\d+\b', "NUMBER"),
            (r'\bCREATE TABLE\b', "CREATE_TABLE"),
            (r'\bALTER TABLE\b', "ALTER_TABLE"),
            (r'\bIF\b', "IF"),  
            (r'\bNOT\b', "NOT"),
            (r'\bAND\b', "AND"),
            (r'\bOR\b', "OR"),
            (r'\bAS\b', "AS"),
            (r'\bEXISTS\b', "EXISTS"),
            (r'\bPRIMARY KEY\b', "PRIMARY_KEY"),  
            (r'\bFOREIGN KEY\b', "FOREIGN_KEY"),
            (r'\bREFERENCES\b', "REFERENCES"),  
            (r'\bON\b', "ON"), 
            (r'\bUPDATE\b', "UPDATE"), 
            (r'\bCASCADE\b', "CASCADE"), 
            (r'\bCHECK \((.+?)\)', "CHECK"),  # CHECK constraints
            (r'\bLENGTH\b', "LENGTH"),
            (r'\bDEFAULT\b', "DEFAULT"), 
            (r'VARCHAR\(\d+\)', "VARCHAR"),  # VARCHAR(n)
            (r'CHAR\(\d+\)', "CHAR"),   # CHAR(n)
            (r'\bDATE\b', "DATE"),
            (r'\bTIMESTAMP\b', "TIMESTAMP"),
            (r'\bINTEGER\b', "INTEGER"),
            (r'\bDECIMAL\b', "DECIMAL"),
            (r'\bNUMERIC\(\d+,\d+\)\b', "NUMERIC"),  # NUMERIC(precision, scale)
            (r'>=', "GREATER_THAN_OR_EQUAL"),  
            (r'<=', "LESS_THAN_OR_EQUAL"),  
            (r'!=', "NOT_EQUAL"),  
            (r'=', "EQUAL"),  
            (r'<>', "NOT_EQUAL_ALT"),
            (r'>', "GREATER_THAN"), 
            (r'<', "LESS_THAN"),  
            (r'%', "MODULO"),  
            (r'\+', "PLUS"),  
            (r'-', "MINUS"),  
            (r'\*', "MULTIPLY"), 
            (r'/', "DIVIDE"),  
            (r'\|\|', "CONCATENATION"),
            (r'\bCONSTRAINT\b', "CONSTRAINT"),
            (r'\;', "SEMICOLON"),
            (r'\s+', "WHITESPACE"),
            (r',', "COMMA"),
            (r'\.', "DOT"),
            (r'\(', "OPEN_PAREN"),
            (r'\)', "CLOSE_PAREN"),
            (r'\bUNIQUE\b', "UNIQUE"),
            (r'\bNULL\b', "NULL"),
            (r'\bTEXT\b', "TEXT"),
            (r'\b[A-Za-z_][A-Za-z0-9_]*\b', "IDENTIFIER"),
        ]

    def tokenize(self):
        while self.position < len(self.schema):
            for pattern, token_type in self.token_patterns:
                regex = re.compile(pattern)
                match = regex.match(self.schema, self.position) # Continuously match according to position
                if match:
                    if token_type not in ["WHITESPACE"]:  # Ignore whitespace
                        text = match.group()
                        # Add position to token
                        self.tokens.append((token_type, text, self.position))
                    self.position += len(match.group()) # Update position
                    break
            else:
                raise ValueError(f"Unknown token at {self.position}")
        return self.tokens

class Parser:
    def __init__(self, tokens):
        self.tokens = tokens
        self.current_token = None
        self.position = 0

    def parse(self):
        queries = []
        current_query = []
        while self.position < len(self.tokens):
            token_type, value, pos = self.tokens[self.position]
            if token_type == "SEMICOLON":
                queries.append(current_query)
                current_query = []
            else:
                current_query.append((token_type, value, pos))
            self.position += 1
        if current_query:  
            queries.append(current_query)
        return queries


def start(file_path):
    with open(file_path, 'r') as file:
        sql_content = file.read()
    lexer = Lexer(sql_content)
    tokens = lexer.tokenize()
    print(f"\nOutput from Lexer:\n{tokens}\n\n")
    parser = Parser(tokens)
    parsed_queries = parser.parse()
    return parsed_queries


# file_path = 'schema_scripts/Le Tour 2023-schema.sql'
# file_path = 'schema_scripts/AISSchema.sql'
file_path = 'schema_scripts/mondialSchema.sql'
queries = start(file_path)
print("\nOutput from Parser:\n")
# for query in queries:
#     print('\n', query)