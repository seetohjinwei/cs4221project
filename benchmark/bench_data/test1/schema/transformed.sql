CREATE TABLE Usernames ( u_id INT PRIMARY KEY , username TEXT ) ;
 CREATE TABLE Students ( s_id INT PRIMARY KEY , grade CHAR(1) ) ;
 CREATE TABLE Products ( p_id INT PRIMARY KEY , price INT ) ;
 CREATE TABLE Orders ( o_id INT PRIMARY KEY , order_date DATE , delivery_date DATE ) ;
 CREATE TABLE Employees ( e_id INT PRIMARY KEY , salary INT ) ;


--- Trigger ---
CREATE OR REPLACE FUNCTION Usernames_6236()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT (LENGTH(NEW.username) < 12) THEN
        RAISE EXCEPTION 'Usernames_6236 constraint violated';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Usernames_6236_trigger
BEFORE INSERT OR UPDATE ON Usernames
FOR EACH ROW
EXECUTE FUNCTION Usernames_6236();
---------------
--- Trigger ---
CREATE OR REPLACE FUNCTION Students_25299()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT (NEW.grade IN ('A', 'B', 'C', 'D', 'E', 'F')) THEN
        RAISE EXCEPTION 'Students_25299 constraint violated';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Students_25299_trigger
BEFORE INSERT OR UPDATE ON Students
FOR EACH ROW
EXECUTE FUNCTION Students_25299();
---------------
--- Trigger ---
CREATE OR REPLACE FUNCTION Products_71990()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT (NEW.price > 0) THEN
        RAISE EXCEPTION 'Products_71990 constraint violated';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Products_71990_trigger
BEFORE INSERT OR UPDATE ON Products
FOR EACH ROW
EXECUTE FUNCTION Products_71990();
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
CREATE OR REPLACE FUNCTION Employees_35129()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT (NEW.salary BETWEEN 0 AND 1000) THEN
        RAISE EXCEPTION 'Employees_35129 constraint violated';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Employees_35129_trigger
BEFORE INSERT OR UPDATE ON Employees
FOR EACH ROW
EXECUTE FUNCTION Employees_35129();
---------------