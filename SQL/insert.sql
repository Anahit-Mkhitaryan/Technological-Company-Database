USE tech_company;

INSERT INTO Investor (ID, First_Name, Last_Name, Total_Payments, Phone_Number, Email_Address)
VALUES
(1, 'John', 'Doe', 50000.00, '555-1234', 'john.doe@example.com'),
(2, 'Jane', 'Smith', 75000.00, '555-5678', 'jane.smith@example.com');

INSERT INTO Clients (ID, Company_Name, Phone_Number, Email_Address)
VALUES
(1, 'TechCorp', '555-9876', 'contact@techcorp.com'),
(2, 'Innovatech', '555-6543', 'info@innovatech.com');

INSERT INTO Projects (ID, Project_Name, Budget, Deadline, Client_ID)
VALUES
(1, 'AI Development', 200000.00, '2025-06-01', 1),
(2, 'Web Redesign', 50000.00, '2024-12-15', 2);

INSERT INTO Offices (ID, Office_Name, City_Name, Street_Address, Capacity, Country_Name)
VALUES
(1, 'HQ', 'New York', '123 Tech Street', 100, 'USA'),
(2, 'Branch', 'San Francisco', '456 Silicon Avenue', 50, 'USA');

INSERT INTO Shareholders (ID, First_Name, Last_Name, Voting_Rights, Share_Amount)
VALUES
(1, 'Alice', 'Brown', TRUE, 1500.00),
(2, 'Bob', 'Green', FALSE, 1000.00);

INSERT INTO Stocks (ID, Stock_Price, Stockholder_ID, Investor_ID)
VALUES
(1, 120.50, 1, 1),
(2, 150.75, 2, 2);

INSERT INTO OfficeSupplies (ID, Supply_Model, Supply_Type, Supply_Price, Supply_Amount)
VALUES
(1, 'HP-LaserJet', 'Printer', 300.00, 5),
(2, 'Dell-Inspiron', 'Laptop', 800.00, 10);

INSERT INTO InvestedProject (Investor_ID, Project_ID)
VALUES
(1, 1),
(2, 2);

INSERT INTO Employee (ID, First_Name, Last_Name, Home_Address, Card_Number, Job_Position, Email_Address, Phone_Number, Salary, Office_ID)
VALUES
(1, 'Charlie', 'Davis', '789 Elm Street', '1234-5678-9012', 'Developer', 'charlie.davis@example.com', '555-1111', 85000.00, 1),
(2, 'Dana', 'Evans', '321 Oak Street', '9876-5432-1098', 'Designer', 'dana.evans@example.com', '555-2222', 70000.00, 2);

INSERT INTO EmployeeStocks (Employee_ID, Stock_ID)
VALUES
(1, 1),
(2, 2);

INSERT INTO EmployeeProject (Employee_ID, Project_ID)
VALUES
(1, 1),
(2, 2);

INSERT INTO EmployeeSupplies (Employee_ID, Supply_ID)
VALUES
(1, 1),
(2, 2);

INSERT INTO OfficeAndSupplies (Office_ID, Supply_ID)
VALUES
(1, 1),
(2, 2);
