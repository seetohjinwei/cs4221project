CREATE TABLE Employee (
  -- test comment
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Age INT,
    Salary DECIMAL(10, 2),
    Email VARCHAR(255),
    PhoneNumber VARCHAR(15),
    StartDate DATE,
    EndDate DATE,
    Department VARCHAR(50),
    Role VARCHAR(50),

    CONSTRAINT CK_Employee_Age CHECK (Age >= 18 AND Age <= 65),

    CONSTRAINT CK_Employee_Salary CHECK (Salary > 0),

    CONSTRAINT CK_Employee_Email CHECK (
        POSITION('@' IN Email) > 1 AND 
        POSITION('.' IN Email) > POSITION('@' IN Email) + 1 AND
        LENGTH(Email) - LENGTH(REPLACE(Email, '.', '')) <= 3 AND
        RIGHT(Email, 4) <> '.con' -- Avoid common typo
    ),

    CONSTRAINT CK_Employee_PhoneNumber CHECK (
        LENGTH(PhoneNumber) BETWEEN 10 AND 15 AND
        PhoneNumber NOT LIKE '%[^0-9]%'
    ),

    CONSTRAINT CK_Employee_StartEndDate CHECK (
        StartDate < EndDate OR EndDate IS NULL
    ),

    CONSTRAINT CK_Employee_Department CHECK (
        Department IN ('IT', 'HR', 'Finance', 'Sales', 'Marketing')
    ),
    
    CONSTRAINT CK_Employee_Role CHECK (
        (Role = 'Manager' AND Department = 'IT') OR
        (Role = 'Analyst' AND Department IN ('Finance', 'Marketing')) OR
        (Role = 'HR Coordinator' AND Department = 'HR') OR
        (Role = 'Sales Representative' AND Department = 'Sales') OR
        (Role NOT IN ('Manager', 'Analyst', 'HR Coordinator', 'Sales Representative'))
    )
  );

  -- INSERT to violate constraint
  -- INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Salary, Email, PhoneNumber, StartDate, Department, Role)
  -- VALUES (1, 'John', 'Doe', 17, 50000, 'john.doe@example.com', '1234567890', '2024-03-21', 'IT', 'Analyst');
  -- INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Salary, Email, PhoneNumber, StartDate, Department, Role)
  -- VALUES (2, 'Jane', 'Doe', 30, -100, 'jane.doe@example.com', '0987654321', '2024-03-21', 'HR', 'HR Coordinator');
  -- INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Salary, Email, PhoneNumber, StartDate, Department, Role)
  -- VALUES (3, 'Alice', 'Smith', 28, 60000, 'alice.smith@com', '1231231234', '2024-03-21', 'Finance', 'Analyst');
  -- INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Salary, Email, PhoneNumber, StartDate, Department, Role)
  -- VALUES (4, 'Bob', 'Brown', 40, 75000, 'bob.brown@example.com', 'abc123def4', '2024-03-21', 'Sales', 'Sales Representative');
  -- INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Salary, Email, PhoneNumber, StartDate, EndDate, Department, Role)
  -- VALUES (5, 'Charlie', 'Green', 35, 50000, 'charlie.green@example.com', '9876543210', '2024-12-01', '2024-03-21', 'Marketing', 'Analyst');
  -- INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Salary, Email, PhoneNumber, StartDate, Department, Role)
  -- VALUES (6, 'Diana', 'White', 32, 68000, 'diana.white@example.com', '4564564567', '2024-03-21', 'Legal', 'Manager');
  -- INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Salary, Email, PhoneNumber, StartDate, Department, Role)
  -- VALUES (7, 'Evan', 'Black', 29, 55000, 'evan.black@example.com', '6546546543', '2024-03-21', 'IT', 'HR Coordinator');