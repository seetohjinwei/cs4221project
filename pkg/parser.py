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
