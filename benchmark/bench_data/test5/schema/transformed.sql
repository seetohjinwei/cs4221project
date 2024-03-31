CREATE TABLE customers ( customer_id SERIAL PRIMARY KEY , name VARCHAR(255) NOT NULL , address VARCHAR(255) NOT NULL , phone_number VARCHAR(20) , email VARCHAR(255) NOT NULL ) ;
 CREATE TABLE employees ( employee_id SERIAL PRIMARY KEY , first_name VARCHAR(255) NOT NULL , last_name VARCHAR(255) NOT NULL , position VARCHAR(255) NOT NULL , hire_date DATE NOT NULL , salary NUMERIC ) ;
 CREATE TABLE ships ( ship_id SERIAL PRIMARY KEY , name VARCHAR(255) NOT NULL , capacity NUMERIC NOT NULL , year_built INT ) ;
 CREATE TABLE routes ( route_id SERIAL PRIMARY KEY , origin VARCHAR(255) NOT NULL , destination VARCHAR(255) NOT NULL , estimated_days INT ) ;
 CREATE TABLE shipments ( shipment_id SERIAL PRIMARY KEY , departure_date DATE NOT NULL , arrival_date DATE NOT NULL , status VARCHAR(50) NOT NULL ) ;


--- Trigger ---
CREATE OR REPLACE FUNCTION customers_54764()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT (char_length(NEW.phone_number) >= 10) THEN
        RAISE EXCEPTION 'customers_54764 constraint violated';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER customers_54764_trigger
BEFORE INSERT OR UPDATE ON customers
FOR EACH ROW
EXECUTE FUNCTION customers_54764();
---------------
--- Trigger ---
CREATE OR REPLACE FUNCTION employees_55500()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT (NEW.salary > 0) THEN
        RAISE EXCEPTION 'employees_55500 constraint violated';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER employees_55500_trigger
BEFORE INSERT OR UPDATE ON employees
FOR EACH ROW
EXECUTE FUNCTION employees_55500();
---------------
--- Trigger ---
CREATE OR REPLACE FUNCTION ships_8937()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT (NEW.capacity > 0) THEN
        RAISE EXCEPTION 'ships_8937 constraint violated';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER ships_8937_trigger
BEFORE INSERT OR UPDATE ON ships
FOR EACH ROW
EXECUTE FUNCTION ships_8937();
---------------
--- Trigger ---
CREATE OR REPLACE FUNCTION ships_47045()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT (NEW.year_built > 1900 AND NEW.year_built <= EXTRACT(YEAR FROM CURRENT_DATE)) THEN
        RAISE EXCEPTION 'ships_47045 constraint violated';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER ships_47045_trigger
BEFORE INSERT OR UPDATE ON ships
FOR EACH ROW
EXECUTE FUNCTION ships_47045();
---------------
--- Trigger ---
CREATE OR REPLACE FUNCTION routes_48896()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT (NEW.estimated_days > 0) THEN
        RAISE EXCEPTION 'routes_48896 constraint violated';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER routes_48896_trigger
BEFORE INSERT OR UPDATE ON routes
FOR EACH ROW
EXECUTE FUNCTION routes_48896();
---------------
--- Trigger ---
CREATE OR REPLACE FUNCTION shipments_82248()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT (NEW.status IN ('Pending', 'In Transit', 'Delivered')) THEN
        RAISE EXCEPTION 'shipments_82248 constraint violated';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER shipments_82248_trigger
BEFORE INSERT OR UPDATE ON shipments
FOR EACH ROW
EXECUTE FUNCTION shipments_82248();
---------------
--- Trigger ---
CREATE OR REPLACE FUNCTION shipments_97333()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT (NEW.departure_date < NEW.arrival_date) THEN
        RAISE EXCEPTION 'shipments_97333 constraint violated';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER shipments_97333_trigger
BEFORE INSERT OR UPDATE ON shipments
FOR EACH ROW
EXECUTE FUNCTION shipments_97333();
---------------