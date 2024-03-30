CREATE TABLE Usernames (
    u_id INT PRIMARY KEY,
    username TEXT CHECK (LENGTH(username) < 12)
);

CREATE TABLE Students (
    s_id INT PRIMARY KEY,
    grade CHAR(1) CHECK (grade IN ('A', 'B', 'C', 'D', 'E', F'))
);

CREATE TABLE Products (
    p_id INT PRIMARY KEY,
    price INT CHECK (price > 0)
);

CREATE TABLE Orders (
    o_id INT PRIMARY KEY,
    order_date DATE,
    delivery_date DATE,
    CONSTRAINT deliver_after_order CHECK (delivery_date > order_date)
);

CREATE TABLE Employees (
    e_id INT PRIMARY KEY,
    salary INT CHECK (salary BETWEEN 0 AND 1000)
);
