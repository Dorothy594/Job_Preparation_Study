-- CREATE DATABASE chinook;
USE chinook;

CREATE TABLE Employee (
    EmployeeID INT,
    LastName VARCHAR(20),
    FirstName VARCHAR(20),
    Title VARCHAR(30),
    ReportsTo INT,
    BirthDate DATE,
    HireDate DATE,
    Address VARCHAR(70),
    CONSTRAINT PK_Employee PRIMARY KEY (EmployeeID)
);

CREATE TABLE Customers (
    CustomerID INT,
    LastName VARCHAR(20),
    FirstName VARCHAR(20),
    Company VARCHAR(30),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    SupportRepID INT,
    Address VARCHAR(70),
    CONSTRAINT PK_Customers PRIMARY KEY (CustomerID),
    CONSTRAINT FK_SupportRep FOREIGN KEY (SupportRepID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE Invoices (
    InvoiceID INT,
    CustomerID INT,
    InvoiceDate DATE,
    BillingAddress VARCHAR(100),
    TrackID INT,
    CONSTRAINT PK_Invoices PRIMARY KEY (InvoiceID),
    CONSTRAINT FK_InvoiceCustomer FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    CONSTRAINT FK_InvoiceTrack FOREIGN KEY (TrackID) REFERENCES Tracks(TrackID)
);

CREATE TABLE Artists (
    ArtistID INT,
    Name VARCHAR(120),
    CONSTRAINT PK_Artists PRIMARY KEY (ArtistID)
);

CREATE TABLE Albums (
    AlbumID INT,
    Title VARCHAR(160),
    ArtistID INT,
    CONSTRAINT PK_Albums PRIMARY KEY (AlbumID),
    CONSTRAINT FK_AlbumArtist FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID)
);

CREATE TABLE Tracks (
    TrackID INT,
    Name VARCHAR(200),
    AlbumID INT,
    UnitPrice DECIMAL,
    CONSTRAINT PK_Tracks PRIMARY KEY (TrackID),
    CONSTRAINT FK_TrackAlbum FOREIGN KEY (AlbumID) REFERENCES Albums(AlbumID)
);
