create database library;
use library;

CREATE TABLE Authors (
  AuthorID INT PRIMARY KEY,
  Name VARCHAR(100)
);

CREATE TABLE Books (
  BookID INT PRIMARY KEY,
  Title VARCHAR(200),
  AuthorID INT,
  Publisher VARCHAR(100),
  PublicationDate DATE,
  ISBN VARCHAR(20),
  FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

CREATE TABLE Members (
  MemberID INT PRIMARY KEY,
  Name VARCHAR(100),
  Email VARCHAR(100),
  PhoneNumber VARCHAR(20)
);

CREATE TABLE Borrowings (
  BorrowingID INT PRIMARY KEY,
  BookID INT,
  MemberID INT,
  BorrowDate DATE,
  ReturnDate DATE,
  FOREIGN KEY (BookID) REFERENCES Books(BookID),
  FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);


