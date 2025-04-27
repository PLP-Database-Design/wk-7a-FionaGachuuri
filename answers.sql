CREATE DATABASE IF NOT EXISTS salesDB;
USE salesDB;
-- Question 1
-- Create a new table in 1NF
CREATE TABLE IF NOT EXISTS ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(255),
    Product VARCHAR(255)
);

-- Insert the normalized data
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (101, 'John Doe', 'Laptop');
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (101, 'John Doe', 'Mouse');
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (102, 'Jane Smith', 'Tablet');
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (102, 'Jane Smith', 'Keyboard');
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (102, 'Jane Smith', 'Mouse');
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (103, 'Emily Clark', 'Phone');


-- Question 2
DROP TABLE IF EXISTS OrderProducts;
DROP TABLE IF EXISTS OrderDetails;
DROP TABLE IF EXISTS Orders;

-- Create Orders table
CREATE TABLE  Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);

-- Create OrderProducts table
CREATE TABLE OrderProducts (
    OrderID INT,
    Product VARCHAR(255),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Insert data into Orders table
INSERT INTO Orders (OrderID, CustomerName) VALUES (101, 'John Doe');
INSERT INTO Orders (OrderID, CustomerName) VALUES (102, 'Jane Smith');
INSERT INTO Orders (OrderID, CustomerName) VALUES (103, 'Emily Clark');

-- Insert data into OrderProducts table
INSERT INTO OrderProducts (OrderID, Product, Quantity) VALUES (101, 'Laptop', 2);
INSERT INTO OrderProducts (OrderID, Product, Quantity) VALUES (101, 'Mouse', 1);
INSERT INTO OrderProducts (OrderID, Product, Quantity) VALUES (102, 'Tablet', 3);
INSERT INTO OrderProducts (OrderID, Product, Quantity) VALUES (102, 'Keyboard', 1);
INSERT INTO OrderProducts (OrderID, Product, Quantity) VALUES (102, 'Mouse', 2);
INSERT INTO OrderProducts (OrderID, Product, Quantity) VALUES (103, 'Phone', 1);
