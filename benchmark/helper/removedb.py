from db_helper import DBHelper
dbhelper = DBHelper(schemas_path = "benchmark/bench_data/schema")
db_names = ["original", "transformed"]

for name in db_names:      
    dbhelper.remove_database(name)
    print(f"Database {name} removed successfully.")
