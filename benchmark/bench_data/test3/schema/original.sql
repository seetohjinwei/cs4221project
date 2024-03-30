CREATE TABLE T1 (
    A INT,
    B VARCHAR(100),
    C VARCHAR(100),
    D VARCHAR(100),
    E TIMESTAMP,
    CHECK (A > 0 AND LENGTH(B) <= 100)
);

CREATE TABLE T2 (
    F INT,
    G VARCHAR(100),
    H DECIMAL(10, 2),
    I TIMESTAMP,
    CHECK (H >= 0)
);

CREATE TABLE T3 (
    J INT,
    K INT,
    L DATE,
    M DECIMAL(10, 2),
    CHECK (K > 0 AND M >= 0)
);

CREATE TABLE T4 (
    N INT,
    O INT,
    P INT,
    Q INT,
    CHECK (O > 0 AND Q > 0)
);

CREATE TABLE T5 (
    R INT,
    S INT,
    T VARCHAR(100),
    U DECIMAL(10, 2),
    V TIMESTAMP,
    W BOOLEAN,
    X FLOAT,
    Y CHAR(1),
    CHECK (R > 0),
    CHECK (S BETWEEN 1 AND 100),
    CHECK (LENGTH(T) <= 100),
    CHECK (U >= 0 AND U <= 10000),
    CHECK (V IS NOT NULL),
    CHECK (W IS NOT FALSE),
    CHECK (X BETWEEN 0.0 AND 1.0),
    CHECK (Y IN ('A', 'B', 'C'))
);
