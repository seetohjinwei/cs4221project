DROP TABLE IF EXISTS t1 ;
DROP TABLE IF EXISTS t2 ;
DROP TABLE IF EXISTS t3 ;
DROP TABLE IF EXISTS t4 ;
DROP TABLE IF EXISTS t5 ;
CREATE TABLE t1 ( integer INTEGER , varchar VARCHAR , boolean BOOLEAN ) ;
CREATE TABLE t2 ( integer INTEGER , varchar VARCHAR , boolean BOOLEAN ) ;
CREATE TABLE t3 ( integer INTEGER , varchar VARCHAR , boolean BOOLEAN ) ;
CREATE TABLE t4 ( integer INTEGER , varchar VARCHAR , boolean BOOLEAN ) ;
CREATE TABLE t5 ( integer INTEGER , varchar VARCHAR , boolean BOOLEAN ) ;



                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t1_18252()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.integer < 50) THEN
                            RAISE EXCEPTION 't1_18252 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t1_18252_trigger
                    BEFORE INSERT OR UPDATE ON t1
                    FOR EACH ROW
                    EXECUTE FUNCTION t1_18252();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t1_21461()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.varchar = 'a') THEN
                            RAISE EXCEPTION 't1_21461 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t1_21461_trigger
                    BEFORE INSERT OR UPDATE ON t1
                    FOR EACH ROW
                    EXECUTE FUNCTION t1_21461();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION booleanC()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.boolean) THEN
                            RAISE EXCEPTION 'booleanC constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER booleanC_trigger
                    BEFORE INSERT OR UPDATE ON t1
                    FOR EACH ROW
                    EXECUTE FUNCTION booleanC();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION booleanC()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.boolean) THEN
                            RAISE EXCEPTION 'booleanC constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER booleanC_trigger
                    BEFORE INSERT OR UPDATE ON t2
                    FOR EACH ROW
                    EXECUTE FUNCTION booleanC();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t2_21461()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.varchar = 'a') THEN
                            RAISE EXCEPTION 't2_21461 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t2_21461_trigger
                    BEFORE INSERT OR UPDATE ON t2
                    FOR EACH ROW
                    EXECUTE FUNCTION t2_21461();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t2_18252()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.integer < 50) THEN
                            RAISE EXCEPTION 't2_18252 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t2_18252_trigger
                    BEFORE INSERT OR UPDATE ON t2
                    FOR EACH ROW
                    EXECUTE FUNCTION t2_18252();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t3_89154()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.boolean) THEN
                            RAISE EXCEPTION 't3_89154 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t3_89154_trigger
                    BEFORE INSERT OR UPDATE ON t3
                    FOR EACH ROW
                    EXECUTE FUNCTION t3_89154();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t3_18252()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.integer < 50) THEN
                            RAISE EXCEPTION 't3_18252 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t3_18252_trigger
                    BEFORE INSERT OR UPDATE ON t3
                    FOR EACH ROW
                    EXECUTE FUNCTION t3_18252();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t3_21461()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.varchar = 'a') THEN
                            RAISE EXCEPTION 't3_21461 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t3_21461_trigger
                    BEFORE INSERT OR UPDATE ON t3
                    FOR EACH ROW
                    EXECUTE FUNCTION t3_21461();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION booleanC()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.boolean) THEN
                            RAISE EXCEPTION 'booleanC constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER booleanC_trigger
                    BEFORE INSERT OR UPDATE ON t4
                    FOR EACH ROW
                    EXECUTE FUNCTION booleanC();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t4_8218()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT ((NEW.integer) < (((((50)))))) THEN
                            RAISE EXCEPTION 't4_8218 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t4_8218_trigger
                    BEFORE INSERT OR UPDATE ON t4
                    FOR EACH ROW
                    EXECUTE FUNCTION t4_8218();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t4_21461()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.varchar = 'a') THEN
                            RAISE EXCEPTION 't4_21461 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t4_21461_trigger
                    BEFORE INSERT OR UPDATE ON t4
                    FOR EACH ROW
                    EXECUTE FUNCTION t4_21461();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_1177()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.boolean AND NEW.varchar='a' AND NEW.integer<50) THEN
                            RAISE EXCEPTION 't5_1177 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_1177_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_1177();
                    ---------------
                