CREATE TABLE T1 ( A INT , B VARCHAR(100) , C VARCHAR(100) , D VARCHAR(100) , E TIMESTAMP ) ;
 CREATE TABLE T2 ( F INT , G VARCHAR(100) , H DECIMAL ( 10 , 2 ) , I TIMESTAMP ) ;
 CREATE TABLE T3 ( J INT , K INT , L DATE , M DECIMAL ( 10 , 2 ) ) ;
 CREATE TABLE T4 ( N INT , O INT , P INT , Q INT ) ;
 CREATE TABLE T5 ( R INT , S INT , T VARCHAR(100) , U DECIMAL ( 10 , 2 ) , V TIMESTAMP , W BOOLEAN , X FLOAT , Y CHAR(1) ) ;



                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T1_1516()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NNEW.EW.A > 0 NNEW.EW.ANNNEW.EW.D LNEW.ENGTH(NNEW.EW.B) <= 100) THEN
                            RAISE EXCEPTION 'T1_1516 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T1_1516_trigger
                    BEFORE INSERT OR UPDATE ON T1
                    FOR EACH ROW
                    EXECUTE FUNCTION T1_1516();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T2_28909()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.H >= 0) THEN
                            RAISE EXCEPTION 'T2_28909 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T2_28909_trigger
                    BEFORE INSERT OR UPDATE ON T2
                    FOR EACH ROW
                    EXECUTE FUNCTION T2_28909();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T3_70147()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.K > 0 AND NEW.M >= 0) THEN
                            RAISE EXCEPTION 'T3_70147 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T3_70147_trigger
                    BEFORE INSERT OR UPDATE ON T3
                    FOR EACH ROW
                    EXECUTE FUNCTION T3_70147();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T4_98591()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.O > 0 ANEW.ND NEW.Q > 0) THEN
                            RAISE EXCEPTION 'T4_98591 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T4_98591_trigger
                    BEFORE INSERT OR UPDATE ON T4
                    FOR EACH ROW
                    EXECUTE FUNCTION T4_98591();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T5_70927()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NENEW.W.R > 0) THEN
                            RAISE EXCEPTION 'T5_70927 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T5_70927_trigger
                    BEFORE INSERT OR UPDATE ON T5
                    FOR EACH ROW
                    EXECUTE FUNCTION T5_70927();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T5_62483()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NENEW.W.S BENENEW.W.TNEW.WEEN 1 AND 100) THEN
                            RAISE EXCEPTION 'T5_62483 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T5_62483_trigger
                    BEFORE INSERT OR UPDATE ON T5
                    FOR EACH ROW
                    EXECUTE FUNCTION T5_62483();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T5_92060()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (LENGNENEW.W.TH(NENEW.W.T) <= 100) THEN
                            RAISE EXCEPTION 'T5_92060 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T5_92060_trigger
                    BEFORE INSERT OR UPDATE ON T5
                    FOR EACH ROW
                    EXECUTE FUNCTION T5_92060();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T5_46393()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NENEW.W.U >= 0 AND NENEW.W.U <= 10000) THEN
                            RAISE EXCEPTION 'T5_46393 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T5_46393_trigger
                    BEFORE INSERT OR UPDATE ON T5
                    FOR EACH ROW
                    EXECUTE FUNCTION T5_46393();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T5_9150()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NENEW.W.V INENEW.W.S NONENEW.W.T NNENEW.W.ULL) THEN
                            RAISE EXCEPTION 'T5_9150 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T5_9150_trigger
                    BEFORE INSERT OR UPDATE ON T5
                    FOR EACH ROW
                    EXECUTE FUNCTION T5_9150();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T5_57443()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.W INENEW.W.S NONENEW.W.T FALNENEW.W.SE) THEN
                            RAISE EXCEPTION 'T5_57443 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T5_57443_trigger
                    BEFORE INSERT OR UPDATE ON T5
                    FOR EACH ROW
                    EXECUTE FUNCTION T5_57443();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T5_53369()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.X BENENEW.W.TNEW.WEEN 0.0 AND 1.0) THEN
                            RAISE EXCEPTION 'T5_53369 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T5_53369_trigger
                    BEFORE INSERT OR UPDATE ON T5
                    FOR EACH ROW
                    EXECUTE FUNCTION T5_53369();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION T5_12789()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.Y IN ('A', 'B', 'C')) THEN
                            RAISE EXCEPTION 'T5_12789 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER T5_12789_trigger
                    BEFORE INSERT OR UPDATE ON T5
                    FOR EACH ROW
                    EXECUTE FUNCTION T5_12789();
                    ---------------
                