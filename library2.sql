CREATE DATABASE LIBRARY;

USE LIBRARY;

CREATE TABLE Library_Branch (
	branchID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	branchName VARCHAR(30) NOT NULL,
	branchAddress VARCHAR(100) NOT NULL,
);

INSERT INTO Library_Branch
	(branchName, branchAddress)
	VALUES
	("Sharpstown", ""),
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", "");

CREATE TABLE Book_Copies (
	bookID INT FOREIGN KEY REFERENCES Books(bookID) NOT NULL,
	branchID INT FOREIGN KEY REFERENCES Library_Branch(branchID) NOT NULL,
	numberOfCopies INT NOT NULL
);

INSERT INTO Book_Copies
	(numberOfCopies)
	VALUES
	(2)

CREATE TABLE Books (
	bookID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	bookTitle VARCHAR(30) NOT NULL,
	authorName VARCHAR(30) NOT NULL,
	publisherName VARCHAR(30) FOREIGN KEY REFERENCES Publisher(publisherName) NOT NULL
);

INSERT INTO Books
	(bookTitle, authorName)
	VALUES
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("The Lost Tribe", ""),
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", "");

CREATE TABLE Book_Author (
	bookID INT FOREIGN KEY REFERENCES Books(bookID)
	authorName VARCHAR(30) NOT NULL
);

INSERT INTO Book_Author
	(authorName)
	VALUES
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", "");

CREATE TABLE Borrower (
	cardNumber INT PRIMARY KEY NOT NULL,
	customerName VARCHAR(30) NOT NULL,
	customerAddress VARCHAR(100) NOT NULL,
	customerPhone VARCHAR(15) NOT NULL
);

INSERT INTO Borrower
	(cardNumber, customerName, customerAddress, customerPhone)
	VALUES
	(, "", "", ""),
	(, "", "", ""),
	(, "", "", ""),
	(, "", "", ""),
	(, "", "", ""),
	(, "", "", ""),
	(, "", "", ""),
	(, "", "", "");

CREATE TABLE Book_Loans (
	bookID INT FOREIGN KEY REFERENCES Books(bookID) NOT NULL,
	branchID INT FOREIGN KEY REFERENCES Library_Branch(branchID) NOT NULL,
	cardNumber INT FOREIGN KEY REFERENCES Borrower(cardNumber),
	dateOut DATE NOT NULL,
	dateDue DATE NOT NULL
);

INSERT INTO Book_Loans
	(dateOut, dateDue)
	VALUES
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", ""),
	("", "");

CREATE TABLE Publisher (
	publisherName VARCHAR(30) PRIMARY KEY NOT NULL,
	publisherAddress VARCHAR(100) NOT NULL,
	publisherPhone VARCHAR(15) NOT NULL
);

INSERT INTO Publisher
	("", "", ""),
	("", "", ""),
	("", "", ""),
	("", "", ""),
	("", "", ""),
	("", "", ""),
	("", "", ""),
	("", "", ""),
	("", "", ""),
	("", "", "");