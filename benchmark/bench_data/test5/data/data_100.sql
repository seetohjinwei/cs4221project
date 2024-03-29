-- customers (pass)
INSERT INTO customers (name, address, phone_number, email) VALUES ('John Doe', '123 Maple Street', '1234567890', 'johndoe@example.com');
INSERT INTO customers (name, address, phone_number, email) VALUES ('Jane Smith', '456 Oak Lane', '2345678901', 'janesmith@example.com');
INSERT INTO customers (name, address, phone_number, email) VALUES ('Alex Johnson', '789 Pine Avenue', '3456789012', 'alexj@example.com');
INSERT INTO customers (name, address, phone_number, email) VALUES ('Chris Lee', '101 North Road', '4567890123', 'chrislee@example.com');
INSERT INTO customers (name, address, phone_number, email) VALUES ('Pat Kim', '202 South Street', '5678901234', 'patkim@example.com');
INSERT INTO customers (name, address, phone_number, email) VALUES ('Sam Morgan', '303 East Way', '6789012345', 'samm@example.com');
INSERT INTO customers (name, address, phone_number, email) VALUES ('Taylor Reed', '404 West End', '7890123456', 'taylorr@example.com');
INSERT INTO customers (name, address, phone_number, email) VALUES ('Jamie Park', '505 Central Blvd', '8901234567', 'jamiep@example.com');
INSERT INTO customers (name, address, phone_number, email) VALUES ('Casey Quinn', '606 Mountain Rd', '9012345678', 'caseyq@example.com');
INSERT INTO customers (name, address, phone_number, email) VALUES ('Drew Jordan', '707 Valley Ln', '0123456789', 'drewj@example.com');

-- employees (pass)
INSERT INTO employees (first_name, last_name, position, hire_date, salary) VALUES ('Alex', 'Turner', 'Manager', '2020-01-15', 60000);
INSERT INTO employees (first_name, last_name, position, hire_date, salary) VALUES ('Mia', 'Wallace', 'Sales', '2019-05-23', 45000);
INSERT INTO employees (first_name, last_name, position, hire_date, salary) VALUES ('Ethan', 'Hunt', 'Marketing', '2018-07-02', 50000);
INSERT INTO employees (first_name, last_name, position, hire_date, salary) VALUES ('Ellen', 'Ripley', 'Engineer', '2021-03-16', 70000);
INSERT INTO employees (first_name, last_name, position, hire_date, salary) VALUES ('Tony', 'Stark', 'CEO', '2010-09-01', 150000);
INSERT INTO employees (first_name, last_name, position, hire_date, salary) VALUES ('Steve', 'Rogers', 'Operations', '2022-06-20', 65000);
INSERT INTO employees (first_name, last_name, position, hire_date, salary) VALUES ('Natasha', 'Romanoff', 'HR', '2021-11-11', 48000);
INSERT INTO employees (first_name, last_name, position, hire_date, salary) VALUES ('Bruce', 'Wayne', 'Finance', '2015-04-10', 80000);
INSERT INTO employees (first_name, last_name, position, hire_date, salary) VALUES ('Clark', 'Kent', 'IT Support', '2019-08-25', 42000);
INSERT INTO employees (first_name, last_name, position, hire_date, salary) VALUES ('Diana', 'Prince', 'Legal', '2020-12-30', 75000);

-- ships (pass)
INSERT INTO ships (name, capacity, year_built) VALUES ('Titanic II', 2400, 2010);
INSERT INTO ships (name, capacity, year_built) VALUES ('Poseidon', 1500, 2005);
INSERT INTO ships (name, capacity, year_built) VALUES ('Neptune', 500, 2015);
INSERT INTO ships (name, capacity, year_built) VALUES ('Odyssey', 800, 2000);
INSERT INTO ships (name, capacity, year_built) VALUES ('Voyager', 1000, 1995);
INSERT INTO ships (name, capacity, year_built) VALUES ('Pioneer', 600, 2018);
INSERT INTO ships (name, capacity, year_built) VALUES ('Explorer', 300, 2020);
INSERT INTO ships (name, capacity, year_built) VALUES ('Navigator', 1200, 1998);
INSERT INTO ships (name, capacity, year_built) VALUES ('Mariner', 1400, 1992);
INSERT INTO ships (name, capacity, year_built) VALUES ('Adventurer', 700, 2016);

-- routes (pass)
INSERT INTO routes (origin, destination, estimated_days) VALUES ('New York', 'London', 7);
INSERT INTO routes (origin, destination, estimated_days) VALUES ('Los Angeles', 'Tokyo', 14);
INSERT INTO routes (origin, destination, estimated_days) VALUES ('Sydney', 'San Francisco', 15);
INSERT INTO routes (origin, destination, estimated_days) VALUES ('Mumbai', 'New York', 21);
INSERT INTO routes (origin, destination, estimated_days) VALUES ('Cape Town', 'Rio de Janeiro', 12);
INSERT INTO routes (origin, destination, estimated_days) VALUES ('Berlin', 'Beijing', 18);
INSERT INTO routes (origin, destination, estimated_days) VALUES ('Istanbul', 'Moscow', 5);
INSERT INTO routes (origin, destination, estimated_days) VALUES ('Dubai', 'Paris', 8);
INSERT INTO routes (origin, destination, estimated_days) VALUES ('Singapore', 'Johannesburg', 10);
INSERT INTO routes (origin, destination, estimated_days) VALUES ('Bangkok', 'Auckland', 12);

-- shipments (pass)
INSERT INTO shipments (departure_date, arrival_date, status) VALUES ('2023-01-15', '2023-01-22', 'Delivered');
INSERT INTO shipments (departure_date, arrival_date, status) VALUES ('2023-02-01', '2023-02-18', 'In Transit');
INSERT INTO shipments (departure_date, arrival_date, status) VALUES ('2023-03-05', '2023-03-15', 'Pending');
INSERT INTO shipments (departure_date, arrival_date, status) VALUES ('2023-04-20', '2023-05-01', 'Delivered');
INSERT INTO shipments (departure_date, arrival_date, status) VALUES ('2023-05-10', '2023-05-20', 'Delivered');
INSERT INTO shipments (departure_date, arrival_date, status) VALUES ('2023-06-15', '2023-06-25', 'Pending');
INSERT INTO shipments (departure_date, arrival_date, status) VALUES ('2023-07-01', '2023-07-09', 'In Transit');
INSERT INTO shipments (departure_date, arrival_date, status) VALUES ('2023-08-12', '2023-08-19', 'Delivered');
INSERT INTO shipments (departure_date, arrival_date, status) VALUES ('2023-09-20', '2023-10-01', 'Pending');
INSERT INTO shipments (departure_date, arrival_date, status) VALUES ('2023-10-05', '2023-10-15', 'Delivered');
