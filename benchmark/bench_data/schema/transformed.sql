CREATE TABLE customers ( customer_id SERIAL PRIMARY KEY , name VARCHAR(255) NOT NULL , address VARCHAR(255) NOT NULL , phone_number VARCHAR(20) , email VARCHAR(255) UNIQUE NOT NULL ) ;
 CREATE TABLE employees ( employee_id SERIAL PRIMARY KEY , first_name VARCHAR(255) NOT NULL , last_name VARCHAR(255) NOT NULL , position VARCHAR(255) NOT NULL , hire_date DATE NOT NULL , salary NUMERIC ) ;
 CREATE TABLE ships ( ship_id SERIAL PRIMARY KEY , name VARCHAR(255) NOT NULL , capacity NUMERIC NOT NULL , year_built INT ) ;
 CREATE TABLE routes ( route_id SERIAL PRIMARY KEY , origin VARCHAR(255) NOT NULL , destination VARCHAR(255) NOT NULL , estimated_days INT ) ;
 CREATE TABLE shipments ( shipment_id SERIAL PRIMARY KEY , departure_date DATE NOT NULL , arrival_date DATE NOT NULL , status VARCHAR(50) NOT NULL ) ;



                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION customers_78217()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (char_length(NEW.phone_number) >= 10) THEN
                            RAISE EXCEPTION 'customers_78217 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER customers_78217_trigger
                    BEFORE INSERT OR UPDATE ON customers
                    FOR EACH ROW
                    EXECUTE FUNCTION customers_78217();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION employees_70282()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.salary > 0) THEN
                            RAISE EXCEPTION 'employees_70282 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER employees_70282_trigger
                    BEFORE INSERT OR UPDATE ON employees
                    FOR EACH ROW
                    EXECUTE FUNCTION employees_70282();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION ships_65616()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.capacity > 0) THEN
                            RAISE EXCEPTION 'ships_65616 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER ships_65616_trigger
                    BEFORE INSERT OR UPDATE ON ships
                    FOR EACH ROW
                    EXECUTE FUNCTION ships_65616();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION ships_27886()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.year_built > 1900 AND NEW.year_built <= EXTRACT(YEAR FROM CURRENT_DATE)) THEN
                            RAISE EXCEPTION 'ships_27886 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER ships_27886_trigger
                    BEFORE INSERT OR UPDATE ON ships
                    FOR EACH ROW
                    EXECUTE FUNCTION ships_27886();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION routes_962()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.estimated_days > 0) THEN
                            RAISE EXCEPTION 'routes_962 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER routes_962_trigger
                    BEFORE INSERT OR UPDATE ON routes
                    FOR EACH ROW
                    EXECUTE FUNCTION routes_962();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION shipments_2964()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.status IN ('Pending', 'In Transit', 'Delivered')) THEN
                            RAISE EXCEPTION 'shipments_2964 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER shipments_2964_trigger
                    BEFORE INSERT OR UPDATE ON shipments
                    FOR EACH ROW
                    EXECUTE FUNCTION shipments_2964();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION shipments_96875()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.departure_date < NEW.arrival_date) THEN
                            RAISE EXCEPTION 'shipments_96875 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER shipments_96875_trigger
                    BEFORE INSERT OR UPDATE ON shipments
                    FOR EACH ROW
                    EXECUTE FUNCTION shipments_96875();
                    ---------------
                