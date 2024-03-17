from .common import Table, Token


class Translator:
    def generate_triggers(self, tables: list[Table]) -> str:
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

        trigger_code = '\n'.join(triggers)
        return trigger_code

    def rebuild_create_tables(self, tokens: list[Token]) -> str:
        create_tables_code = ' '.join([t[1] for t in tokens])
        formatted_create_tables_code = create_tables_code.replace(";", ";\n")
        return formatted_create_tables_code
