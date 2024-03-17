CREATE TABLE hello ( a INTEGER , b INTEGER , CONSTRAINT b_pk PRIMARY KEY ( b ) , c INTEGER ) ;



                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION a_not_negative()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (a > 0) THEN
                            RAISE EXCEPTION 'a_not_negative constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER a_not_negative_trigger
                    BEFORE INSERT OR UPDATE ON hello
                    FOR EACH ROW
                    EXECUTE FUNCTION a_not_negative();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION hello_85926()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (c < 0) THEN
                            RAISE EXCEPTION 'hello_85926 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER hello_85926_trigger
                    BEFORE INSERT OR UPDATE ON hello
                    FOR EACH ROW
                    EXECUTE FUNCTION hello_85926();
                    ---------------
                