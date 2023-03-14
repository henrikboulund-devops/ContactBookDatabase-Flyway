CREATE TABLE Cities(
    Zipcode VARCHAR(10) NOT NULL PRIMARY KEY,
    `Name` VARCHAR(100) NOT NULL
);

CREATE TABLE Countries(
    Code VARCHAR(2) NOT NULL PRIMARY KEY,
    `Name` VARCHAR(100) NOT NULL
);

ALTER TABLE Contacts ADD CountryCode VARCHAR(2) NOT NULL;
ALTER TABLE Contacts DROP COLUMN City;
ALTER TABLE Contacts DROP COLUMN Country;

ALTER TABLE Contacts ADD FOREIGN KEY (Zipcode) REFERENCES Cities(Zipcode);
ALTER TABLE Contacts ADD FOREIGN KEY (CountryCode) REFERENCES Countries(Code);