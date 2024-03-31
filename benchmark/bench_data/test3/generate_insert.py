import random

NUM_OF_ROWS = 10000

def generate_inserts(violation_rate, num_rows, output_file):
    with open(output_file, "w") as file:
        failed_inserts = num_rows * violation_rate // 100
        passed_inserts = num_rows - failed_inserts
        for _ in range(failed_inserts):
            file.write(generate_violating_value() + '\n')
        for _ in range(passed_inserts):
            file.write(generate_valid_value() + '\n')


def generate_violating_value():
    list_of_violating_values = [
        "INSERT INTO T1 (A, B) VALUES (-1, 'SomeText');",
        "INSERT INTO T2 (F, G, H) VALUES (1, 'SomeText', -5.00);",
        "INSERT INTO T3 (J, K, L, M) VALUES (1, -5, '2024-03-30', -10.00);",
        "INSERT INTO T4 (N, O, P, Q) VALUES (1, 0, 10, 0);",
        "INSERT INTO T5 (R, S, T, U, V, W, X, Y) VALUES (0, 50, 'SomeText', -5.00, NULL, FALSE, 1.5, 'D');"
    ]
    return random.choice(list_of_violating_values)
    

def generate_valid_value():
    list_of_valid_values = [
        "INSERT INTO T1 (A, B) VALUES (1, 'SomeText');",
        "INSERT INTO T2 (F, G, H) VALUES (2, 'SomeText', 5.00);",
        "INSERT INTO T3 (J, K, L, M) VALUES (2, 5, '2024-03-30', 10.00);",
        "INSERT INTO T4 (N, O, P, Q) VALUES (2, 5, 10, 1);",
        "INSERT INTO T5 (R, S, T, U, V, W, X, Y) VALUES (1, 50, 'SomeText', 5.00, '2024-03-30 12:00:00', TRUE, 0.5, 'A');"
    ]
    return random.choice(list_of_valid_values)

def main():
    generate_inserts(0, NUM_OF_ROWS, "./data/data_000.sql")
    generate_inserts(25, NUM_OF_ROWS, "./data/data_025.sql")
    generate_inserts(50, NUM_OF_ROWS, "./data/data_050.sql")
    generate_inserts(75, NUM_OF_ROWS, "./data/data_075.sql")
    generate_inserts(100, NUM_OF_ROWS, "./data/data_100.sql")


if __name__ == "__main__":
    main()

