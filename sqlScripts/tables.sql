CREATE DATABASE IoT;

DROP TABLE IF EXISTS Accounts;
DROP TABLE IF EXISTS Items;
DROP TABLE IF EXISTS CheckedOut;

CREATE TABLE Accounts(
    Id int NOT NULL AUTO_INCREMENT;
    Name varchar(50),
    Email varchar(200) NOT NULL;
    EmployeeId int(10);
    UNIQUE KEY (EmployeeId);
    PRIMARY KEY(Id)
)

CREATE TABLE Items(
    Id int NOT NULL AUTO_INCREMENT;
    ItemId int(10);
    Name varchar(200);
    Total int(100);
    QRID int(10);
    Available int(100);
    CheckedOut int(100);
    PRIMARY KEY(Id);
    UNIQUE KEY(Name);
    UNIQUE KEY(ItemId)
)


CREATE TABLE CheckedOut(
    ItemId int(10);
    EmployeeId int(10);
    CheckedOutDate;
    FOREIGN KEY(ItemId)
)