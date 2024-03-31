import os
import psycopg2
from psycopg2 import sql
from dotenv import load_dotenv
load_dotenv()

class DBHelper:
    def __init__(self, schemas_path):
        load_dotenv()
        self.user = os.getenv("DB_USER")
        self.password = os.getenv("DB_PASSWORD")
        self.host = os.getenv("DB_HOST")
        self.port = os.getenv("DB_PORT")
        self.schemas_path = schemas_path
        self.default_conn = psycopg2.connect(dbname=os.getenv("DB_DEFAULT"), user=self.user, password=self.password, host=self.host, port=self.port)
        

    def create_db_with_schemas(self):
        schema_names = []
        for filename in os.listdir(self.schemas_path):
            if filename.endswith(".sql"):
                schema_name = filename[:-4]  # Remove '.sql' extension
                schema_file_path = os.path.join(self.schemas_path, filename)

                # Create database
                try:
                    conn = self.default_conn
                    conn.autocommit = True
                    with conn.cursor() as cur:
                        cur.execute(sql.SQL("CREATE DATABASE {}").format(sql.Identifier(schema_name)))
                    print(f"Database {schema_name} created successfully.")
                except Exception as e:
                    print(f"Error creating database: {e}")
                    break 
                    if conn:
                        conn.close()

                # Load schema
                try:
                    with psycopg2.connect(dbname=schema_name, user=self.user, password=self.password, host=self.host, port=self.port) as conn:
                        with conn.cursor() as cur:
                            with open(schema_file_path, 'r') as schema_file:
                                schema_sql = schema_file.read()
                                cur.execute(schema_sql)
                            print(f"Schema {schema_name} loaded successfully from {filename}.")
                            schema_names.append(schema_name)
                except Exception as e:
                    print(f"Error loading schema {schema_name}: {e}")
        return schema_names

    def remove_database(self, db_name):
        try:
            conn = self.default_conn
            conn.autocommit = True 
            with conn.cursor() as cur:
                # Now, attempt to drop the specified database
                cur.execute(sql.SQL("DROP DATABASE IF EXISTS {}").format(sql.Identifier(db_name)))
            print(f"Database {db_name} removed successfully.")
        except Exception as e:
            print(f"Error removing database: {e}")
