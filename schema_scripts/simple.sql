CREATE TABLE hello (
    a INTEGER CONSTRAINT a_not_negative CHECK (a > 0),
    b INTEGER,
    CONSTRAINT b_pk PRIMARY KEY (b),
    c INTEGER CHECK (c < 0)
);

CREATE TABLE bye (
    CHECK (a == 0),
    CONSTRAINT ac CHECK (a != 1),
    a INTEGER,
    CHECK (a > 0),
    c INTEGER, 
    b INTEGER,
    CONSTRAINT cc CHECK (c < 0),
    CHECK (b < 0)
);