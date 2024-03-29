CREATE TABLE t1 ( A INT ) ;
 CREATE TABLE t2 ( A VARCHAR(100) ) ;
 CREATE TABLE t3 ( A INT , B INT ) ;
 CREATE TABLE t4 ( A INT , B INT ) ;
 CREATE TABLE t5 ( C1C INT , C2C INT , C3C INT , C4C INT , C5C INT , C6C INT , C7C INT , C8C INT , C9C INT , C10C INT , C11C INT , C12C INT , C13C INT , C14C INT , C15C INT , C16C INT , C17C INT , C18C INT , C19C INT , C20C INT , C21C INT , C22C INT , C23C INT , C24C INT , C25C INT , C26C INT , C27C INT , C28C INT , C29C INT , C30C INT , C31C INT , C32C INT , C33C INT , C34C INT , C35C INT , C36C INT , C37C INT , C38C INT , C39C INT , C40C INT , C41C INT , C42C INT , C43C INT , C44C INT , C45C INT , C46C INT , C47C INT , C48C INT , C49C INT , C50C INT , C51C INT , C52C INT , C53C INT , C54C INT , C55C INT , C56C INT , C57C INT , C58C INT , C59C INT , C60C INT , C61C INT , C62C INT , C63C INT , C64C INT , C65C INT , C66C INT , C67C INT , C68C INT , C69C INT , C70C INT , C71C INT , C72C INT , C73C INT , C74C INT , C75C INT , C76C INT , C77C INT , C78C INT , C79C INT , C80C INT , C81C INT , C82C INT , C83C INT , C84C INT , C85C INT , C86C INT , C87C INT , C88C INT , C89C INT , C90C INT , C91C INT , C92C INT , C93C INT , C94C INT , C95C INT , C96C INT , C97C INT , C98C INT , C99C INT , C100C INT ) ;



                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t1_26399()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.A >= 0) THEN
                            RAISE EXCEPTION 't1_26399 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t1_26399_trigger
                    BEFORE INSERT OR UPDATE ON t1
                    FOR EACH ROW
                    EXECUTE FUNCTION t1_26399();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t2_69884()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (LENGTH(NEW.A) >= 50) THEN
                            RAISE EXCEPTION 't2_69884 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t2_69884_trigger
                    BEFORE INSERT OR UPDATE ON t2
                    FOR EACH ROW
                    EXECUTE FUNCTION t2_69884();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t3_1068()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.A >= NEW.B) THEN
                            RAISE EXCEPTION 't3_1068 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t3_1068_trigger
                    BEFORE INSERT OR UPDATE ON t3
                    FOR EACH ROW
                    EXECUTE FUNCTION t3_1068();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t4_34516()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.A != NEW.B) THEN
                            RAISE EXCEPTION 't4_34516 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t4_34516_trigger
                    BEFORE INSERT OR UPDATE ON t4
                    FOR EACH ROW
                    EXECUTE FUNCTION t4_34516();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_70544()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C1C >= 0) THEN
                            RAISE EXCEPTION 't5_70544 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_70544_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_70544();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_32596()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C2C >= 0) THEN
                            RAISE EXCEPTION 't5_32596 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_32596_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_32596();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_82584()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C3C >= 0) THEN
                            RAISE EXCEPTION 't5_82584 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_82584_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_82584();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_6443()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C4C >= 0) THEN
                            RAISE EXCEPTION 't5_6443 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_6443_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_6443();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_896()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C5C >= 0) THEN
                            RAISE EXCEPTION 't5_896 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_896_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_896();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_68124()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C6C >= 0) THEN
                            RAISE EXCEPTION 't5_68124 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_68124_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_68124();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_84628()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C7C >= 0) THEN
                            RAISE EXCEPTION 't5_84628 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_84628_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_84628();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_95113()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C8C >= 0) THEN
                            RAISE EXCEPTION 't5_95113 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_95113_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_95113();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_62242()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C9C >= 0) THEN
                            RAISE EXCEPTION 't5_62242 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_62242_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_62242();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_62287()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C10C >= 0) THEN
                            RAISE EXCEPTION 't5_62287 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_62287_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_62287();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_3121()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C11C >= 0) THEN
                            RAISE EXCEPTION 't5_3121 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_3121_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_3121();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_10779()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C12C >= 0) THEN
                            RAISE EXCEPTION 't5_10779 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_10779_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_10779();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_62724()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C13C >= 0) THEN
                            RAISE EXCEPTION 't5_62724 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_62724_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_62724();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_20451()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C14C >= 0) THEN
                            RAISE EXCEPTION 't5_20451 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_20451_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_20451();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_80025()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C15C >= 0) THEN
                            RAISE EXCEPTION 't5_80025 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_80025_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_80025();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_48024()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C16C >= 0) THEN
                            RAISE EXCEPTION 't5_48024 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_48024_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_48024();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_30148()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C17C >= 0) THEN
                            RAISE EXCEPTION 't5_30148 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_30148_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_30148();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_91952()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C18C >= 0) THEN
                            RAISE EXCEPTION 't5_91952 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_91952_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_91952();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_17313()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C19C >= 0) THEN
                            RAISE EXCEPTION 't5_17313 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_17313_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_17313();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_40925()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C20C >= 0) THEN
                            RAISE EXCEPTION 't5_40925 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_40925_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_40925();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_82781()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C21C >= 0) THEN
                            RAISE EXCEPTION 't5_82781 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_82781_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_82781();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_4527()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C22C >= 0) THEN
                            RAISE EXCEPTION 't5_4527 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_4527_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_4527();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_35211()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C23C >= 0) THEN
                            RAISE EXCEPTION 't5_35211 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_35211_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_35211();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_32987()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C24C >= 0) THEN
                            RAISE EXCEPTION 't5_32987 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_32987_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_32987();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_4195()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C25C >= 0) THEN
                            RAISE EXCEPTION 't5_4195 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_4195_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_4195();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_25717()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C26C >= 0) THEN
                            RAISE EXCEPTION 't5_25717 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_25717_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_25717();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_76112()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C27C >= 0) THEN
                            RAISE EXCEPTION 't5_76112 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_76112_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_76112();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_54683()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C28C >= 0) THEN
                            RAISE EXCEPTION 't5_54683 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_54683_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_54683();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_94820()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C29C >= 0) THEN
                            RAISE EXCEPTION 't5_94820 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_94820_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_94820();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_68197()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C30C >= 0) THEN
                            RAISE EXCEPTION 't5_68197 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_68197_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_68197();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_81983()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C31C >= 0) THEN
                            RAISE EXCEPTION 't5_81983 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_81983_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_81983();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_71692()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C32C >= 0) THEN
                            RAISE EXCEPTION 't5_71692 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_71692_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_71692();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_26371()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C33C >= 0) THEN
                            RAISE EXCEPTION 't5_26371 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_26371_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_26371();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_53962()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C34C >= 0) THEN
                            RAISE EXCEPTION 't5_53962 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_53962_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_53962();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_32916()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C35C >= 0) THEN
                            RAISE EXCEPTION 't5_32916 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_32916_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_32916();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_42323()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C36C >= 0) THEN
                            RAISE EXCEPTION 't5_42323 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_42323_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_42323();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_32515()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C37C >= 0) THEN
                            RAISE EXCEPTION 't5_32515 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_32515_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_32515();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_60874()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C38C >= 0) THEN
                            RAISE EXCEPTION 't5_60874 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_60874_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_60874();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_20398()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C39C >= 0) THEN
                            RAISE EXCEPTION 't5_20398 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_20398_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_20398();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_64663()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C40C >= 0) THEN
                            RAISE EXCEPTION 't5_64663 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_64663_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_64663();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_33375()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C41C >= 0) THEN
                            RAISE EXCEPTION 't5_33375 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_33375_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_33375();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_60499()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C42C >= 0) THEN
                            RAISE EXCEPTION 't5_60499 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_60499_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_60499();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_90103()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C43C >= 0) THEN
                            RAISE EXCEPTION 't5_90103 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_90103_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_90103();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_48237()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C44C >= 0) THEN
                            RAISE EXCEPTION 't5_48237 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_48237_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_48237();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_42024()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C45C >= 0) THEN
                            RAISE EXCEPTION 't5_42024 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_42024_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_42024();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_82419()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C46C >= 0) THEN
                            RAISE EXCEPTION 't5_82419 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_82419_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_82419();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_43598()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C47C >= 0) THEN
                            RAISE EXCEPTION 't5_43598 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_43598_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_43598();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_32331()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C48C >= 0) THEN
                            RAISE EXCEPTION 't5_32331 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_32331_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_32331();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_15267()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C49C >= 0) THEN
                            RAISE EXCEPTION 't5_15267 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_15267_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_15267();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_4575()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C50C >= 0) THEN
                            RAISE EXCEPTION 't5_4575 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_4575_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_4575();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_99178()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C51C >= 0) THEN
                            RAISE EXCEPTION 't5_99178 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_99178_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_99178();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_79873()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C52C >= 0) THEN
                            RAISE EXCEPTION 't5_79873 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_79873_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_79873();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_61259()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C53C >= 0) THEN
                            RAISE EXCEPTION 't5_61259 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_61259_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_61259();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_83175()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C54C >= 0) THEN
                            RAISE EXCEPTION 't5_83175 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_83175_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_83175();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_78667()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C55C >= 0) THEN
                            RAISE EXCEPTION 't5_78667 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_78667_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_78667();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_6883()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C56C >= 0) THEN
                            RAISE EXCEPTION 't5_6883 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_6883_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_6883();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_19514()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C57C >= 0) THEN
                            RAISE EXCEPTION 't5_19514 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_19514_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_19514();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_95735()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C58C >= 0) THEN
                            RAISE EXCEPTION 't5_95735 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_95735_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_95735();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_22112()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C59C >= 0) THEN
                            RAISE EXCEPTION 't5_22112 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_22112_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_22112();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_28624()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C60C >= 0) THEN
                            RAISE EXCEPTION 't5_28624 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_28624_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_28624();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_48906()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C61C >= 0) THEN
                            RAISE EXCEPTION 't5_48906 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_48906_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_48906();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_96538()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C62C >= 0) THEN
                            RAISE EXCEPTION 't5_96538 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_96538_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_96538();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_98051()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C63C >= 0) THEN
                            RAISE EXCEPTION 't5_98051 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_98051_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_98051();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_16237()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C64C >= 0) THEN
                            RAISE EXCEPTION 't5_16237 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_16237_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_16237();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_74091()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C65C >= 0) THEN
                            RAISE EXCEPTION 't5_74091 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_74091_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_74091();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_89878()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C66C >= 0) THEN
                            RAISE EXCEPTION 't5_89878 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_89878_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_89878();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_1157()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C67C >= 0) THEN
                            RAISE EXCEPTION 't5_1157 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_1157_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_1157();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_29386()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C68C >= 0) THEN
                            RAISE EXCEPTION 't5_29386 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_29386_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_29386();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_55011()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C69C >= 0) THEN
                            RAISE EXCEPTION 't5_55011 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_55011_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_55011();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_85542()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C70C >= 0) THEN
                            RAISE EXCEPTION 't5_85542 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_85542_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_85542();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_75603()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C71C >= 0) THEN
                            RAISE EXCEPTION 't5_75603 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_75603_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_75603();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_46422()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C72C >= 0) THEN
                            RAISE EXCEPTION 't5_46422 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_46422_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_46422();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_97543()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C73C >= 0) THEN
                            RAISE EXCEPTION 't5_97543 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_97543_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_97543();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_29173()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C74C >= 0) THEN
                            RAISE EXCEPTION 't5_29173 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_29173_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_29173();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_75818()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C75C >= 0) THEN
                            RAISE EXCEPTION 't5_75818 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_75818_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_75818();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_31734()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C76C >= 0) THEN
                            RAISE EXCEPTION 't5_31734 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_31734_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_31734();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_18131()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C77C >= 0) THEN
                            RAISE EXCEPTION 't5_18131 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_18131_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_18131();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_50826()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C78C >= 0) THEN
                            RAISE EXCEPTION 't5_50826 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_50826_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_50826();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_68649()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C79C >= 0) THEN
                            RAISE EXCEPTION 't5_68649 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_68649_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_68649();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_66162()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C80C >= 0) THEN
                            RAISE EXCEPTION 't5_66162 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_66162_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_66162();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_84720()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C81C >= 0) THEN
                            RAISE EXCEPTION 't5_84720 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_84720_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_84720();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_15315()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C82C >= 0) THEN
                            RAISE EXCEPTION 't5_15315 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_15315_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_15315();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_95922()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C83C >= 0) THEN
                            RAISE EXCEPTION 't5_95922 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_95922_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_95922();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_17927()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C84C >= 0) THEN
                            RAISE EXCEPTION 't5_17927 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_17927_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_17927();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_24210()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C85C >= 0) THEN
                            RAISE EXCEPTION 't5_24210 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_24210_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_24210();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_30056()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C86C >= 0) THEN
                            RAISE EXCEPTION 't5_30056 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_30056_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_30056();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_21051()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C87C >= 0) THEN
                            RAISE EXCEPTION 't5_21051 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_21051_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_21051();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_2738()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C88C >= 0) THEN
                            RAISE EXCEPTION 't5_2738 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_2738_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_2738();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_61884()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C89C >= 0) THEN
                            RAISE EXCEPTION 't5_61884 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_61884_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_61884();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_74972()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C90C >= 0) THEN
                            RAISE EXCEPTION 't5_74972 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_74972_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_74972();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_60297()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C91C >= 0) THEN
                            RAISE EXCEPTION 't5_60297 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_60297_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_60297();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_58601()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C92C >= 0) THEN
                            RAISE EXCEPTION 't5_58601 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_58601_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_58601();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_88593()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C93C >= 0) THEN
                            RAISE EXCEPTION 't5_88593 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_88593_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_88593();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_66982()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C94C >= 0) THEN
                            RAISE EXCEPTION 't5_66982 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_66982_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_66982();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_73396()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C95C >= 0) THEN
                            RAISE EXCEPTION 't5_73396 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_73396_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_73396();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_9879()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C96C >= 0) THEN
                            RAISE EXCEPTION 't5_9879 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_9879_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_9879();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_38662()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C97C >= 0) THEN
                            RAISE EXCEPTION 't5_38662 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_38662_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_38662();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_32141()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C98C >= 0) THEN
                            RAISE EXCEPTION 't5_32141 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_32141_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_32141();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_63035()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C99C >= 0) THEN
                            RAISE EXCEPTION 't5_63035 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_63035_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_63035();
                    ---------------
                

                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION t5_95553()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT (NEW.C100C >= 0) THEN
                            RAISE EXCEPTION 't5_95553 constraint violated';
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER t5_95553_trigger
                    BEFORE INSERT OR UPDATE ON t5
                    FOR EACH ROW
                    EXECUTE FUNCTION t5_95553();
                    ---------------
                