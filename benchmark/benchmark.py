import psycopg2
from psycopg2 import sql
import os
from dotenv import load_dotenv
import time
load_dotenv()

class DBBenchmark:
    def __init__(self, schemas_path):
        load_dotenv()
        self.user = os.getenv("DB_USER")
        self.password = os.getenv("DB_PASSWORD")
        self.host = os.getenv("DB_HOST")
        self.port = os.getenv("DB_PORT")
        self.default_db = os.getenv("DB_DEFAULT")
        self.schemas_path = schemas_path

    def create_db_with_schemas(self):
        schema_names = []
        for filename in os.listdir(self.schemas_path):
            if filename.endswith(".sql"):
                schema_name = filename[:-4]  # Remove '.sql' extension
                schema_file_path = os.path.join(self.schemas_path, filename)

                # Create database
                try:
                    conn = psycopg2.connect(dbname=self.default_db, user=self.user, password=self.password, host=self.host, port=self.port)
                    conn.autocommit = True
                    with conn.cursor() as cur:
                        cur.execute(sql.SQL("CREATE DATABASE {}").format(sql.Identifier(schema_name)))
                    print(f"Database {schema_name} created successfully.")
                except Exception as e:
                    print(f"Error creating database: {e}")
                    continue  # Continue with the next file if database creation fails
                finally:
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

    def execute_ins_file(self, cursor, data_file_path):
        with open(data_file_path, 'r') as file:
            for line in file:
                stripped_line = line.strip()
                if not stripped_line or stripped_line.startswith("--"):
                    continue
                try:
                    cursor.execute(stripped_line)
                except psycopg2.IntegrityError as e:
                    print(f"Error executing statement: {e}")
                    cursor.connection.rollback()

    def benchmark_insertion(self, schema_names, data_file_path):
        results = {}
        for schema in schema_names:
            with psycopg2.connect(dbname=schema, user=self.user, password=self.password, host=self.host, port=self.port) as conn, conn.cursor() as cur:
                start_time = time.time()
                self.execute_ins_file(cur, data_file_path)
                conn.commit()

                elapsed_time = time.time() - start_time
                results[schema] = elapsed_time
                print(f"Time taken for schema '{schema}': {elapsed_time} seconds")

        print("Benchmarking completed.")
        return results

    def remove_database(self, db_name):
        try:
            conn = psycopg2.connect(dbname=db_name, user=self.user, password=self.password, host=self.host, port=self.port)
            conn.autocommit = True 
            with conn.cursor() as cur:
                cur.execute(sql.SQL("DROP DATABASE IF EXISTS {}").format(sql.Identifier(db_name)))
            print(f"Database {db_name} removed successfully.")
        except Exception as e:
            print(f"Error removing database: {e}")
        finally:
            if conn:
                conn.close()