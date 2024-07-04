DROP DATABASE cm_devices;

CREATE DATABASE cm_devices;
USE cm_devices;
CREATE TABLE devices(
deviceID int,
deviceNAME varchar(50),
price decimal);
SHOW tables;
SHOW columns FROM devices;

CREATE TABLE stock(
deviceID int,
quantity int,
totalPrice decimal);
SHOW tables;

CREATE TABLE customers(
username CHAR(9),
fullname VARCHAR(100),
email VARCHAR(255));
SHOW columns FROM customers;

CREATE TABLE feedback(
feedbackID CHAR(8),
feedbackType VARCHAR(100),
comment TEXT(500));
SHOW tables;

CREATE TABLE address(
id int NOT NULL,
street varchar(255),
postcode varchar(10),
town varchar(30) default "Harrow");
SHOW columns FROM address;
DROP TABLE address;

CREATE TABLE invoice (
customerName VARCHAR(50),
orderDate DATE,
quantity INT,
price DECIMAL); 
SHOW tables;
SHOW columns FROM invoice; 
