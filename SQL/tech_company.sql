use tech_company;

CREATE TABLE Investor (
    ID INT PRIMARY KEY,
    First_Name VARCHAR(255) NOT NULL,
    Last_Name VARCHAR(255) NOT NULL,
    Total_Payments DECIMAL(10, 2),
    Phone_Number VARCHAR(15),
    Email_Address VARCHAR(255)
);

CREATE TABLE Clients (
    ID INT PRIMARY KEY,
    Company_Name VARCHAR(255),
    Phone_Number VARCHAR(15),
    Email_Address VARCHAR(255)
);

CREATE TABLE Projects (
    ID INT PRIMARY KEY,
    Project_Name VARCHAR(255) NOT NULL,
    Budget DECIMAL(10, 2),
    Deadline DATE,
    Client_ID INT NOT NULL,
    FOREIGN KEY (Client_ID) REFERENCES Clients(ID)
);

CREATE TABLE Offices (
    ID INT PRIMARY KEY,
    Office_Name VARCHAR(255),
    City_Name VARCHAR(255),
    Street_Address VARCHAR(255),
    Capacity INT,
    Country_Name VARCHAR(255)
);

CREATE TABLE Shareholders (
    ID INT PRIMARY KEY,
    First_Name VARCHAR(255) NOT NULL,
    Last_Name VARCHAR(255) NOT NULL,
    Voting_Rights BOOLEAN,
    Share_Amount DECIMAL(10, 2)
);

CREATE TABLE Stocks (
    ID INT PRIMARY KEY,
    Stock_Price DECIMAL(10, 2),
    Stockholder_ID INT,
    Investor_ID INT,
    FOREIGN KEY (Stockholder_ID) REFERENCES Shareholders(ID),
    FOREIGN KEY (Investor_ID) REFERENCES Investor(ID)
);

CREATE TABLE OfficeSupplies (
    ID INT PRIMARY KEY,
    Supply_Model VARCHAR(255),
    Supply_Type VARCHAR(255),
    Supply_Price DECIMAL(10, 2),
    Supply_Amount INT
);

CREATE TABLE InvestedProject (
    Investor_ID INT,
    Project_ID INT,
    PRIMARY KEY (Investor_ID, Project_ID),
    FOREIGN KEY (Investor_ID) REFERENCES Investor(ID),
    FOREIGN KEY (Project_ID) REFERENCES Projects(ID)
);

CREATE TABLE Employee (
    ID INT PRIMARY KEY,
    First_Name VARCHAR(255) NOT NULL,
    Last_Name VARCHAR(255) NOT NULL,
    Home_Address VARCHAR(255),
    Card_Number VARCHAR(255) UNIQUE,
    Job_Position VARCHAR(255) NOT NULL,
    Email_Address VARCHAR(255) NOT NULL UNIQUE,
    Phone_Number VARCHAR(15),
    Salary DECIMAL(10, 2),
    Office_ID INT NOT NULL,
    FOREIGN KEY (Office_ID) REFERENCES Offices(ID)
);

CREATE TABLE EmployeeStocks (
    Employee_ID INT,
    Stock_ID INT,
    PRIMARY KEY (Employee_ID, Stock_ID),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(ID),
    FOREIGN KEY (Stock_ID) REFERENCES Stocks(ID)
);

CREATE TABLE EmployeeProject (
    Employee_ID INT,
    Project_ID INT,
    PRIMARY KEY (Employee_ID, Project_ID),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(ID),
    FOREIGN KEY (Project_ID) REFERENCES Projects(ID)
);

CREATE TABLE EmployeeSupplies (
    Employee_ID INT,
    Supply_ID INT,
    PRIMARY KEY (Employee_ID, Supply_ID),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(ID),
    FOREIGN KEY (Supply_ID) REFERENCES OfficeSupplies(ID)
);

CREATE TABLE OfficeAndSupplies (
    Office_ID INT,
    Supply_ID INT,
    PRIMARY KEY (Office_ID, Supply_ID),
    FOREIGN KEY (Office_ID) REFERENCES Offices(ID),
    FOREIGN KEY (Supply_ID) REFERENCES OfficeSupplies(ID)
);
