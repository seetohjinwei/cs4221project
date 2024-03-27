CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(255) UNIQUE NOT NULL,
    CHECK (char_length(phone_number) >= 10)
);

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    position VARCHAR(255) NOT NULL,
    hire_date DATE NOT NULL,
    salary NUMERIC CHECK (salary > 0)
);

CREATE TABLE ships (
    ship_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    capacity NUMERIC NOT NULL CHECK (capacity > 0),
    year_built INT CHECK (year_built > 1900 AND year_built <= EXTRACT(YEAR FROM CURRENT_DATE))
);

CREATE TABLE routes (
    route_id SERIAL PRIMARY KEY,
    origin VARCHAR(255) NOT NULL,
    destination VARCHAR(255) NOT NULL,
    estimated_days INT CHECK (estimated_days > 0)
);

CREATE TABLE shipments (
    shipment_id SERIAL PRIMARY KEY,
    departure_date DATE NOT NULL,
    arrival_date DATE NOT NULL,
    status VARCHAR(50) NOT NULL CHECK (status IN ('Pending', 'In Transit', 'Delivered')),
    CHECK (departure_date < arrival_date)
);