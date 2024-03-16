CREATE TABLE hello (
    a INTEGER CONSTRAINT a_not_negative CHECK (a > 0),
    b INTEGER,
    CONSTRAINT b_pk PRIMARY KEY (b),
    c INTEGER CHECK (c < 0)
)