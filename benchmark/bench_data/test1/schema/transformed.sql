CREATE TABLE Usernames ( u_id INT PRIMARY KEY , username TEXT ) ;
 CREATE TABLE Students ( s_id INT PRIMARY KEY , grade CHAR(1) ) ;
 CREATE TABLE Products ( p_id INT PRIMARY KEY , price INT ) ;
 CREATE TABLE Orders ( o_id INT PRIMARY KEY , order_date DATE , delivery_date DATE ) ;
 CREATE TABLE Employees ( e_id INT PRIMARY KEY , salary INT ) ;


--- Trigger ---
CREATE OR REPLACE FUNCTION Usernames_83664()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT (LENGTH(NEW.username) < 12) THEN
        RAISE EXCEPTION 'Usernames_83664 constraint violated';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Usernames_83664_trigger
BEFORE INSERT OR UPDATE ON Usernames
FOR EACH ROW
EXECUTE FUNCTION Usernames_83664();
---------------
--- Trigger ---
CREATE OR REPLACE FUNCTION Students_93316()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT (NEW.grade IN ('A', 'B', 'C', 'D', 'F')) THEN
        RAISE EXCEPTION 'Students_93316 constraint violated';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Students_93316_trigger
BEFORE INSERT OR UPDATE ON Students
FOR EACH ROW
EXECUTE FUNCTION Students_93316();
---------------
--- Trigger ---
CREATE OR REPLACE FUNCTION Products_13090()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT (NEW.price > 0) THEN
        RAISE EXCEPTION 'Products_13090 constraint violated';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Products_13090_trigger
BEFORE INSERT OR UPDATE ON Products
FOR EACH ROW
EXECUTE FUNCTION Products_13090();
---------------
--- Trigger ---
CREATE OR REPLACE FUNCTION deliver_after_order()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT (NEW.delivery_date > NEW.order_date) THEN
        RAISE EXCEPTION 'deliver_after_order constraint violated';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER deliver_after_order_trigger
BEFORE INSERT OR UPDATE ON Orders
FOR EACH ROW
EXECUTE FUNCTION deliver_after_order();
---------------
--- Trigger ---
CREATE OR REPLACE FUNCTION Employees_32044()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT (NEW.salary BETWEEN 0 AND 1000) THEN
        RAISE EXCEPTION 'Employees_32044 constraint violated';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Employees_32044_trigger
BEFORE INSERT OR UPDATE ON Employees
FOR EACH ROW
EXECUTE FUNCTION Employees_32044();
---------------