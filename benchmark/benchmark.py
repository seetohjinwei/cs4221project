import psycopg2
from psycopg2 import sql
import os
from dotenv import load_dotenv
import time
load_dotenv()

class DBBenchmark:
    def __init__(self):
        load_dotenv()
        self.user = os.getenv("DB_USER")
        self.password = os.getenv("DB_PASSWORD")
        self.host = os.getenv("DB_HOST")
        self.port = os.getenv("DB_PORT")
        self.default_db = os.getenv("DB_DEFAULT")

    def execute_ins_file(self, cursor, data_file_path):
        with open(data_file_path, 'r') as file:
            for line_number, line in enumerate(file, start=1):
                stripped_line = line.strip()
                
                # Skip empty lines & comments
                if not stripped_line or stripped_line.startswith("--"):
                    continue
                
                try:
                    cursor.execute(stripped_line)
                except psycopg2.IntegrityError as e:
                    print(f"Constraint violation at line {line_number}: {e}")
                    cursor.connection.rollback()
                except psycopg2.ProgrammingError as e:
                    print(f"SQL error at line {line_number}: {e}")
                    cursor.connection.rollback()
                except Exception as e:
                    print(f"Error at line {line_number}: {e}")
                    cursor.connection.rollback()


    def benchmark_insertion(self, schema_names, data_file_path):
        results = []
        for schema in schema_names:
            with psycopg2.connect(dbname=schema, user=self.user, password=self.password, host=self.host, port=self.port) as conn, conn.cursor() as cur:
                start_time = time.time()
                self.execute_ins_file(cur, data_file_path)
                conn.commit()

                elapsed_time = time.time() - start_time

                results.append(elapsed_time)
                print(f"Time taken for schema '{schema}': {elapsed_time} seconds")

        print("Benchmarking completed.")
        return results