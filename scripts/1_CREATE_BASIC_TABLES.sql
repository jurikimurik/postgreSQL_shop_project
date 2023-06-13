CREATE DATABASE shop; --przydałoby się ;)
\c shop;

CREATE SCHEMA data;

CREATE TABLE data.Address (
    Id serial PRIMARY KEY,
    Street text,
    Building_number integer NOT NULL,
    Frame_number integer,
    Apartment_number integer,
    Zip_code text,
    City text,
    Country text,
    User_id int NOT NULL
);

CREATE TABLE data.User (
  Id serial PRIMARY KEY,
  Name text NOT NULL,
  Surname text,
  Email text,
  Phone VARCHAR(15) NOT NULL,
  Preferred_payment_method_id int NOT NULL
);

CREATE TABLE data.Payments (
  Id serial PRIMARY KEY,
  Payment_method text
);

CREATE TABLE data.Order (
    Id serial PRIMARY KEY,
    User_id  int NOT NULL,
    Product_id  int NOT NULL,
    Pieces int NOT NULL,
    Address_id  int NOT NULL,
    Amount money NOT NULL,
    Payment_type_id  int NOT NULL
);

CREATE TABLE data.Product (
    Id serial PRIMARY KEY,
    Name text NOT NULL,
    Brand_id  int NOT NULL,
    Size_id  int NOT NULL,
    Gender_id  int NOT NULL,
    Price money NOT NULL,
    Quantity int NOT NULL,
    Subcategory_id  int NOT NULL
);

CREATE TABLE data.Brand (
    Id serial PRIMARY KEY,
    Brand text
);

CREATE TABLE data.Size (
    Id serial PRIMARY KEY,
    Size text
);

CREATE TABLE data.Gender (
    Id serial PRIMARY KEY,
    Gender text
);

CREATE TABLE data.Subcategories (
  Id serial PRIMARY KEY,
  Subcategory text,
  Category_id  int NOT NULL
);

CREATE TABLE data.Categories (
    Id serial PRIMARY KEY,
    Category text
);
