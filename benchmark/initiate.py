import os
from benchmark import DBBenchmark
from helper.db_helper import DBHelper

dbbench = DBBenchmark()


def bench(data_files_path):
    # Create original and transformed dbs
    db_names = dbhelper.create_db_with_schemas()
    results = {'original': {}, 'transformed': {}}

    for filename in os.listdir(data_files_path):
        if filename.endswith(".sql"):
            ins_name = filename[:-4]  # Remove '.sql' extension
            print(f"\n------------ Processing {ins_name} ------------")
            ins_file_path = os.path.join(data_files_path, filename)

            interim_results = dbbench.benchmark_insertion(db_names, ins_file_path)
            print(interim_results)



            results['original'][ins_name] = interim_results[0]
            results['transformed'][ins_name] = interim_results[1]

    for name in db_names:
        dbhelper.remove_database(name)
        print(f"Database {name} removed successfully.")
    return results


# Load all test data
test_files_path = "benchmark/bench_data/"
# loop through all folders in the test_files_path

final_result = {}
for test in os.listdir(test_files_path):
    test_path = os.path.join(test_files_path, test)
    data_files_path = os.path.join(test_path, "data")
    schema_files_path = os.path.join(test_path, "schema")
    dbhelper = DBHelper(schemas_path = schema_files_path)
    print("\n---------------------------------------")
    print(f"Running benchmark for {test}...")
    print("---------------------------------------\n")

    results = bench(data_files_path)
    final_result[test] = results
    print("\n\n")


print(f'Final Benchmarking result:')

for test, value1 in final_result.items():
    print(f"{test}: ")
    for schema, value2 in value1.items():
        print(f"\t{schema}: ")
        count = 0
        for key, time in value2.items():
            print(f"\t\tTime for {count}% constraint violation: {time} seconds.")
            count += 25