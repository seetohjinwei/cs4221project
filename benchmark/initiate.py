import os
from benchmark import DBBenchmark

db_bench = DBBenchmark(schemas_path = "benchmark/bench_data/schema")
data_files_path = "benchmark/bench_data/data"

# Create original and transformed dbs
db_names = db_bench.create_db_with_schemas()
print(db_names)
results = {}

for filename in os.listdir(data_files_path):
    if filename.endswith(".sql"):
        ins_name = filename[:-4]  # Remove '.sql' extension
        ins_file_path = os.path.join(data_files_path, filename)

        interim_results = db_bench.benchmark_insertion(db_names, ins_file_path)

        results[ins_name] = interim_results

for name in db_names:      
    db_bench.remove_database(name)
    print(f"Database {name} removed successfully.")
print(results)