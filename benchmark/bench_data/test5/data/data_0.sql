-- customers (fail)
INSERT INTO customers (name, address, phone_number, email) VALUES ('Alice Wonderland', '123 Fantasy Road', '1234', 'alice@example.com');
INSERT INTO customers (name, address, phone_number, email) VALUES ('Bob Builder', '456 Construction Site', '5678', 'bob@example.com');
INSERT INTO customers (name, address, phone_number, email) VALUES ('Charlie Chocolate', '789 Cocoa Avenue', '9012', 'charlie@example.com');
INSERT INTO customers (name, address, phone_number, email) VALUES ('Dora Explorer', '101 Adventure Lane', '', 'dora@example.com');
INSERT INTO customers (name, address, phone_number, email) VALUES ('Eve Online', '202 Virtual World', '3456', 'eve@example.com');
INSERT INTO customers (name, address, phone_number, email) VALUES ('Frank Underwood', '303 Political Plaza', '7890', 'frank@example.com');
INSERT INTO customers (name, address, phone_number, email) VALUES ('Grace Hopper', '404 Computer Street', '123', 'grace@example.com');
INSERT INTO customers (name, address, phone_number, email) VALUES ('Hank Hill', '505 Propane Road', '456', 'hank@example.com');
INSERT INTO customers (name, address, phone_number, email) VALUES ('Irene Adler', '606 Baker Street', '789', 'irene@example.com');
INSERT INTO customers (name, address, phone_number, email) VALUES ('Jack Sparrow', '707 Caribbean Avenue', '012', 'jack@example.com');

-- employees (fail)
INSERT INTO employees (first_name, last_name, position, hire_date, salary) VALUES ('Invalid', 'Salary', 'Crew', '2023-01-01', -100);
INSERT INTO employees (first_name, last_name, position, hire_date, salary) VALUES ('Jack', 'Sparrow', 'Captain', '2023-02-02', 0);
INSERT INTO employees (first_name, last_name, position, hire_date, salary) VALUES ('Ash', 'Ketchup', 'Pokemon Trainer', '2023-03-03', -50000);
INSERT INTO employees (first_name, last_name, position, hire_date, salary) VALUES ('Marty', 'McFly', 'Time Traveler', '2025-04-04', -30000);
INSERT INTO employees (first_name, last_name, position, hire_date, salary) VALUES ('John', 'Jae', 'Intern', '2023-05-05', -1);
INSERT INTO employees (first_name, last_name, position, hire_date, salary) VALUES ('Matt', 'Pool', 'Consultant', '2023-06-06', -20000);
INSERT INTO employees (first_name, last_name, position, hire_date, salary) VALUES ('Dim', 'Sum', 'Advisor', '2023-07-07', -300);
INSERT INTO employees (first_name, last_name, position, hire_date, salary) VALUES ('Ben', 'Big', 'Historian', '2025-08-08', -25000);
INSERT INTO employees (first_name, last_name, position, hire_date, salary) VALUES ('Dim', 'Nam', 'Electrician', '2023-09-09', -50);
INSERT INTO employees (first_name, last_name, position, hire_date, salary) VALUES ('Joe', 'Rogan', 'Analyst', '2023-10-10', 0);

-- ships (fail)
INSERT INTO ships (name, capacity, year_built) VALUES ('Future Float', 1000, 2026);
INSERT INTO ships (name, capacity, year_built) VALUES ('Past Sail', -500, 1001);
INSERT INTO ships (name, capacity, year_built) VALUES ('Old Relic', 300, 1890);
INSERT INTO ships (name, capacity, year_built) VALUES ('Zero Ship', 0, 1199);
INSERT INTO ships (name, capacity, year_built) VALUES ('Negative Tonnage', -200, 2010);
INSERT INTO ships (name, capacity, year_built) VALUES ('Time Traveler', 500, 2027);
INSERT INTO ships (name, capacity, year_built) VALUES ('Ancient Vessel', 700, 1800);
INSERT INTO ships (name, capacity, year_built) VALUES ('Modern Myth', 800, 2050);
INSERT INTO ships (name, capacity, year_built) VALUES ('Lost Ark', 950, 1888);
INSERT INTO ships (name, capacity, year_built) VALUES ('Ghost Ship', 100, 1700);

-- routes (fail)
INSERT INTO routes (origin, destination, estimated_days) VALUES ('Town A', 'Town B', -1);
INSERT INTO routes (origin, destination, estimated_days) VALUES ('City X', 'City Y', -2);
INSERT INTO routes (origin, destination, estimated_days) VALUES ('Port 1', 'Port 2', -5);
INSERT INTO routes (origin, destination, estimated_days) VALUES ('Island A', 'Island B', 0);
INSERT INTO routes (origin, destination, estimated_days) VALUES ('Landmark C', 'Landmark D', -10);
INSERT INTO routes (origin, destination, estimated_days) VALUES ('Region E', 'Region F', -3);
INSERT INTO routes (origin, destination, estimated_days) VALUES ('Zone G', 'Zone H', -20);
INSERT INTO routes (origin, destination, estimated_days) VALUES ('Area I', 'Area J', 0);
INSERT INTO routes (origin, destination, estimated_days) VALUES ('Place K', 'Place L', -7);
INSERT INTO routes (origin, destination, estimated_days) VALUES ('Spot M', 'Spot N', -15);

-- shipments (fail)
INSERT INTO shipments (departure_date, arrival_date, status) VALUES ('2023-08-15', '2023-08-10', 'Delivered');
INSERT INTO shipments (departure_date, arrival_date, status) VALUES ('2023-09-01', '2023-08-31', 'Pending');
INSERT INTO shipments (departure_date, arrival_date, status) VALUES ('2023-10-05', '2023-10-04', 'In Transit');
INSERT INTO shipments (departure_date, arrival_date, status) VALUES ('2023-11-20', '2023-11-15', 'Pending');
INSERT INTO shipments (departure_date, arrival_date, status) VALUES ('2023-12-25', '2023-12-24', 'Missing');
INSERT INTO shipments (departure_date, arrival_date, status) VALUES ('2024-01-30', '2024-01-25', 'In Transit');
INSERT INTO shipments (departure_date, arrival_date, status) VALUES ('2024-02-14', '2024-02-10', 'Lost');
INSERT INTO shipments (departure_date, arrival_date, status) VALUES ('2024-03-21', '2024-03-20', 'Delivered');
INSERT INTO shipments (departure_date, arrival_date, status) VALUES ('2024-04-18', '2024-04-17', 'In Transit');
INSERT INTO shipments (departure_date, arrival_date, status) VALUES ('2024-05-29', '2024-05-28', 'Pending');