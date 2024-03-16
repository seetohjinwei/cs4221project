from .common import Table


class Translator:
    def generate_triggers(self, tables: list[Table]) -> list[str]:
        """
        Generates triggers and respective trigger functions from parser output.
        """
        triggers = []

        for table in tables:
            for constraint in table.constraints:
                trigger = f'''
                    --- Trigger ---
                    CREATE OR REPLACE FUNCTION {constraint.constraint_name}()
                    RETURNS TRIGGER AS $$
                    BEGIN
                        IF NOT ({constraint.expression}) THEN
                            RAISE EXCEPTION \"{constraint.constraint_name} constraint violated\";
                        END IF;
                        RETURN NEW;
                    END;
                    $$ LANGUAGE plpgsql;

                    CREATE TRIGGER {constraint.constraint_name}_trigger
                    BEFORE INSERT OR UPDATE ON {table.table_name}
                    FOR EACH ROW
                    EXECUTE FUNCTION {constraint.constraint_name}()
                    ---------------
                '''
                triggers.append(trigger)

        print(*triggers, sep="\n")
        return triggers
