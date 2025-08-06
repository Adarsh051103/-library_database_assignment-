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

INSERT INTO Authors (AuthorID, Name)
VALUES (1, 'J.K. Rowling');

INSERT INTO Books (BookID, Title, AuthorID, Publisher, PublicationDate, ISBN)
VALUES (1, 'Harry Potter', 1, 'Bloomsbury', '1997-06-26', '978-0747532699');


INSERT INTO Members (MemberID, Name, Email, PhoneNumber)
VALUES (1, 'John Doe', 'john.doe@example.com', '1234567890');

INSERT INTO Borrowings (BorrowingID, BookID, MemberID, BorrowDate, ReturnDate)
VALUES (1, 1, 1, '2023-01-01', '2023-01-15');


-- Insert more authors
INSERT INTO Authors (AuthorID, Name) 
VALUES 
(2, 'J.R.R. Tolkien'),
(3, 'George R.R. Martin'),
(4, 'Jane Austen'),
(5, 'Charles Dickens');

INSERT INTO Books (BookID, Title, AuthorID, Publisher, PublicationDate, ISBN)
Values(2,'To Kill a Mocking Bird',2,'J.B. lippincott & Co','1960-07-11','978-0061120084'),
(3,'1984',3,'Secker & Warburg','1949-06-08','978-0451524935'),
(4,'Pride and Prejudice',4,'Thomas Egerton','1813-01-28','978-1853260509'),
(5,'The Alchemist',5,'Harper Torch','1993-04-01','978-0062502179');

INSERT INTO Members (MemberID, Name, Email, PhoneNumber)
VALUES (2,"Rahul Sharma","rahul.sharma@example.com","9876543210"),
(3,"Priya Patel","priya.patel@example.com","8765432109"),
(4,"Amit Kumar","amit.kumar@example.com","7654321098"),
(5,"Sneha Desai","sneha.desai@example.com","6543210987");

INSERT INTO Borrowings (BorrowingID, BookID, MemberID, BorrowDate, ReturnDate)
VALUES
(2, 2,2, '2023-02-01', '2023-02-15'),
(3, 3,3, '2023-03-01', '2023-03-15'),
(4,4,4, '2023-04-01', '2023-04-15'),
(5, 5,5, '2023-05-01', '2023-05-15');

