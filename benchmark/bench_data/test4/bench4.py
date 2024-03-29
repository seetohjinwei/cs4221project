# tweak this value!
ROWS = 1000


def generate1(rows: list[str], percentage: int) -> list[str]:
    fail_insertion = (percentage / 100) * ROWS
    fail_update = fail_insertion + (percentage / 100) * (ROWS - fail_insertion)

    # A < 0: fail
    # A >= 0: success

    for r in range(ROWS):
        if r < fail_insertion:
            r = -100  # violates the constraint
        else:
            r = r

        row = f"INSERT INTO t1 (A) VALUES ({r});\n"
        rows.append(row)

    for r in range(ROWS - 1, -1, -1):
        if r < fail_insertion:
            continue
        if r < fail_update:
            new_r = -100  # violates the constraint
        else:
            new_r = r + 1

        row = f"UPDATE t1 SET A = {new_r} WHERE A = {r};\n"
        rows.append(row)

    return rows


def generate2(rows: list[str], percentage: int) -> list[str]:
    fail_insertion = (percentage / 100) * ROWS
    fail_update = fail_insertion + (percentage / 100) * (ROWS - fail_insertion)

    # len(A) == 1: fail
    # len(A) == 51: success

    success_prepend = "*" * 50

    for r in range(ROWS):
        if r < fail_insertion:
            r = "."  # violates the constraint
        else:
            r = success_prepend + str(r)

        row = f"INSERT INTO t2 (A) VALUES ('{r}');\n"
        rows.append(row)

    for r in range(ROWS - 1, -1, -1):
        if r < fail_insertion:
            continue
        if r < fail_update:
            new_r = "."  # violates the constraint
        else:
            new_r = success_prepend + str(r + 1)
        r = success_prepend + str(r)

        row = f"UPDATE t2 SET A = '{new_r}' WHERE A = '{r}';\n"
        rows.append(row)

    return rows


def generate3(rows: list[str], percentage: int) -> list[str]:
    fail_insertion = (percentage / 100) * ROWS
    fail_update = fail_insertion + (percentage / 100) * (ROWS - fail_insertion)

    # A < B: fail
    # A >= B: success

    for r in range(ROWS):
        if r < fail_insertion:
            # violates the constraint
            a = r
            b = a + 1
        else:
            a = b = r

        row = f"INSERT INTO t3 (A, B) VALUES ({a}, {b});\n"
        rows.append(row)

    for r in range(ROWS - 1, -1, -1):
        if r < fail_insertion:
            continue
        if r < fail_update:
            # violates the constraint
            a = r
            new_a = a + 1
            new_b = new_a + 1
        else:
            a = r
            new_a = new_b = a + 1

        row = f"UPDATE t3 SET A = {new_a}, B = {new_b} WHERE A = {a};\n"
        rows.append(row)

    return rows


def generate4(rows: list[str], percentage: int) -> list[str]:
    fail_insertion = (percentage / 100) * ROWS
    fail_update = fail_insertion + (percentage / 100) * (ROWS - fail_insertion)

    # A == B: fail
    # A != B: success

    for r in range(ROWS):
        if r < fail_insertion:
            # violates the constraint
            a = b = r
        else:
            a = r
            b = a + 1

        row = f"INSERT INTO t4 (A, B) VALUES ({a}, {b});\n"
        rows.append(row)

    for r in range(ROWS - 1, -1, -1):
        if r < fail_insertion:
            continue
        if r < fail_update:
            # violates the constraint
            a = r
            new_a = new_b = a + 1
        else:
            a = r
            new_a = a + 1
            new_b = new_a + 1

        row = f"UPDATE t4 SET A = {new_a}, B = {new_b} WHERE A = {a};\n"
        rows.append(row)

    return rows


def generate5(rows: list[str], percentage: int) -> list[str]:
    fail_insertion = (percentage / 100) * ROWS
    fail_update = fail_insertion + (percentage / 100) * (ROWS - fail_insertion)

    columns = ",".join([f"C{i}C" for i in range(1, 101)])

    # A == B: fail
    # A != B: success

    for c in range(ROWS):
        values = ",".join([str(c) for _ in range(99)])

        if c < fail_insertion:
            c100 = -100  # violates the constraint
        else:
            c100 = c

        row = f"INSERT INTO t5 ({columns}) VALUES ({values},{c100});\n"
        rows.append(row)

    for c in range(ROWS - 1, -1, -1):
        if c < fail_insertion:
            continue
        if c < fail_update:
            new_c100 = -100  # violates the constraint
        else:
            new_c100 = c + 1

        row = f"UPDATE t5 SET C100C = {new_c100} WHERE C1C = {c};\n"
        rows.append(row)

    return rows


def main() -> None:
    # percentage is out of 100 that VIOLATES.
    percentages = [0, 25, 50, 75, 100]
    for p in percentages:
        with open(f"Bench4Populate_{p}.sql", "w") as f:
            rows: list[str] = []

            rows = generate1(rows, p)
            rows = generate2(rows, p)
            rows = generate3(rows, p)
            rows = generate4(rows, p)
            rows = generate5(rows, p)

            f.writelines(rows)


if __name__ == "__main__":
    main()
