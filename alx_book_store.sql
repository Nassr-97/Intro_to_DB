
CREATE DATABASE IF NOT EXISTS alx_book_store;


CREATE TABLE Books(
    book_id int PRIMARY KEY,
    title VARCHAR(130),
    author_id int FOREIGN KEY REFERENCES Aothors(aothor_id),
    price double,
    publication_date date,
);

CREATE TABLE Authors(
    author_id int PRIMARY KEY,
    author_name VARCHAR(215),
);

CREATE TABLE Customers(
    customer_id int PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT,
);

CREATE TABLE Orders(
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Details(
    order_deatail_id int PRIMARY KEY,
    order_id int FOREIGN KEY REFERENCES Orders(order_id),
    book_id int FOREIGN KEY REFERENCES Books(book_id),
    quantity double,
);

