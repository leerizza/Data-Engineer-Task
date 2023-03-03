CREATE TABLE Employee (
    Id INT NOT NULL,
    EmployeeId VARCHAR(10) NOT NULL,
    FullName VARCHAR(100) NOT NULL,
    BirthDate DATE NOT NULL,
    Address VARCHAR(500),
    PRIMARY KEY (Id),
    UNIQUE (EmployeeId)
);


CREATE TABLE PositionHistory (
    Id INT NOT NULL,
    PosId VARCHAR(10) NOT NULL,
    PosTitle VARCHAR(100) NOT NULL,
    EmployeeId VARCHAR(10) NOT NULL,
    StartDate DATE,
    EndDate DATE,
    PRIMARY KEY (Id)
);