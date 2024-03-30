CREATE TABLE T1 ( A INT , B VARCHAR(100) , C VARCHAR(100) , D VARCHAR(100) , E TIMESTAMP ) ;
 CREATE TABLE T2 ( F INT , G VARCHAR(100) , H DECIMAL ( 10 , 2 ) , I TIMESTAMP ) ;
 CREATE TABLE T3 ( J INT , K INT , L DATE , M DECIMAL ( 10 , 2 ) ) ;
 CREATE TABLE T4 ( N INT , O INT , P INT , Q INT ) ;
 CREATE TABLE T5 ( R INT , S INT , T VARCHAR(100) , U DECIMAL ( 10 , 2 ) , V TIMESTAMP , W BOOLEAN , X FLOAT , Y CHAR(1) ) ;



                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T1_3261()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.A > 0 AND LENGTH(NEW.B) <= 100) THEN
                            RAISE EXCEPTION 'T1_3261 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T1_3261_trigger
                    BEFORE INSERT OR UPDATE ON T1
                    FOR EACH ROW
                    EXECUTE FUNCTION T1_3261();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T2_45376()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.H >= 0) THEN
                            RAISE EXCEPTION 'T2_45376 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T2_45376_trigger
                    BEFORE INSERT OR UPDATE ON T2
                    FOR EACH ROW
                    EXECUTE FUNCTION T2_45376();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T3_37303()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.K > 0 AND NEW.M >= 0) THEN
                            RAISE EXCEPTION 'T3_37303 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T3_37303_trigger
                    BEFORE INSERT OR UPDATE ON T3
                    FOR EACH ROW
                    EXECUTE FUNCTION T3_37303();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T4_43467()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.O > 0 AND NEW.Q > 0) THEN
                            RAISE EXCEPTION 'T4_43467 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T4_43467_trigger
                    BEFORE INSERT OR UPDATE ON T4
                    FOR EACH ROW
                    EXECUTE FUNCTION T4_43467();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T5_36718()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.R > 0) THEN
                            RAISE EXCEPTION 'T5_36718 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T5_36718_trigger
                    BEFORE INSERT OR UPDATE ON T5
                    FOR EACH ROW
                    EXECUTE FUNCTION T5_36718();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T5_16729()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.S BETWEEN 1 AND 100) THEN
                            RAISE EXCEPTION 'T5_16729 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T5_16729_trigger
                    BEFORE INSERT OR UPDATE ON T5
                    FOR EACH ROW
                    EXECUTE FUNCTION T5_16729();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T5_42361()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (LENGTH(NEW.T) <= 100) THEN
                            RAISE EXCEPTION 'T5_42361 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T5_42361_trigger
                    BEFORE INSERT OR UPDATE ON T5
                    FOR EACH ROW
                    EXECUTE FUNCTION T5_42361();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T5_36520()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.U >= 0 AND NEW.U <= 10000) THEN
                            RAISE EXCEPTION 'T5_36520 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T5_36520_trigger
                    BEFORE INSERT OR UPDATE ON T5
                    FOR EACH ROW
                    EXECUTE FUNCTION T5_36520();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T5_90674()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.V IS NOT NULL) THEN
                            RAISE EXCEPTION 'T5_90674 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T5_90674_trigger
                    BEFORE INSERT OR UPDATE ON T5
                    FOR EACH ROW
                    EXECUTE FUNCTION T5_90674();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T5_20716()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.W IS NOT FALSE) THEN
                            RAISE EXCEPTION 'T5_20716 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T5_20716_trigger
                    BEFORE INSERT OR UPDATE ON T5
                    FOR EACH ROW
                    EXECUTE FUNCTION T5_20716();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T5_47978()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.X BETWEEN 0.0 AND 1.0) THEN
                            RAISE EXCEPTION 'T5_47978 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T5_47978_trigger
                    BEFORE INSERT OR UPDATE ON T5
                    FOR EACH ROW
                    EXECUTE FUNCTION T5_47978();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T5_30995()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.Y IN ('A', 'B', 'C')) THEN
                            RAISE EXCEPTION 'T5_30995 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T5_30995_trigger
                    BEFORE INSERT OR UPDATE ON T5
                    FOR EACH ROW
                    EXECUTE FUNCTION T5_30995();
                    ---------------
                