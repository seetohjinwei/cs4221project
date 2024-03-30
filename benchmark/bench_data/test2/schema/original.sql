DROP TABLE IF EXISTS t1;
DROP TABLE IF EXISTS t2;
DROP TABLE IF EXISTS t3;
DROP TABLE IF EXISTS t4;
DROP TABLE IF EXISTS t5;

CREATE TABLE t1 (
	integer INTEGER CHECK (integer < 50),
	varchar VARCHAR,
	CHECK (varchar = 'a'),
	boolean BOOLEAN,
	CONSTRAINT booleanC CHECK (boolean)
);

CREATE TABLE t2 (
	CONSTRAINT booleanC CHECK (boolean),
	CHECK (varchar = 'a'),
	integer INTEGER CHECK (integer < 50),
	varchar VARCHAR,
	boolean BOOLEAN
);

CREATE TABLE t3 (
	integer INTEGER CHECK (boolean),
	varchar VARCHAR CHECK (integer < 50),
	boolean BOOLEAN CHECK (varchar = 'a')
);

CREATE TABLE t4 (
	integer INTEGER,
	varchar VARCHAR,
	boolean BOOLEAN,
	CONSTRAINT booleanC CHECK (boolean),
	CHECK ((integer) < (((((50)))))),
	CHECK (varchar = 'a')
);

CREATE TABLE t5 (
	integer INTEGER,
	varchar VARCHAR,
	boolean BOOLEAN,
	CHECK (boolean AND varchar='a' AND integer<50)
);