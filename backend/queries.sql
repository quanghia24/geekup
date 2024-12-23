create database geekup;
use geekup;
show tables;

set FOREIGN_KEY_CHECKS = 0;
-- Table: User
CREATE TABLE User (
    user_id 		INT AUTO_INCREMENT PRIMARY KEY,
    name 			VARCHAR(100),
    email 			VARCHAR(100),
    password 		VARCHAR(100),
    phone 			VARCHAR(100),
    province 		VARCHAR(100),
    district		VARCHAR(100),
    commune 		VARCHAR(100),
    address			VARCHAR(100),
    housing_type	VARCHAR(100)
);

-- Table: Shipment
CREATE TABLE Shipment (
    shipment_id 	INT AUTO_INCREMENT PRIMARY KEY,
    shipment_date 	DATETIME,
    city 			VARCHAR(100),
    state 			VARCHAR(100),
    country 		VARCHAR(100),
    zip_code 		VARCHAR(100),
    user_id 		INT,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

-- Table: Fee
CREATE TABLE Fee (
    fee_id 		INT AUTO_INCREMENT PRIMARY KEY,
    date 		DATETIME,
    method 		VARCHAR(100),
    amount 		DECIMAL(10,2),
    user_id 	INT,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

-- Table: Order
CREATE TABLE `Order` (
    order_id 	INT AUTO_INCREMENT PRIMARY KEY,
    order_date 	DATETIME,
    total_price DECIMAL(10,2),
    user_id 	INT,
    fee_id 		INT,
    shipment_id INT,
    FOREIGN KEY (user_id) 		REFERENCES User(user_id),
    FOREIGN KEY (fee_id) 		REFERENCES Fee(fee_id),
    FOREIGN KEY (shipment_id) 	REFERENCES Shipment(shipment_id)
);

-- Table: Voucher
CREATE TABLE Voucher (
    voucher_id 	INT AUTO_INCREMENT PRIMARY KEY,
    name 		VARCHAR(100),
    value 		INT,
    status 		BOOLEAN,
    start_date 	DATETIME,
    end_date 	DATETIME,
    user_id 	INT,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);


-- Table: Order_Voucher
CREATE TABLE Order_Voucher (
    order_voucher_id 	INT AUTO_INCREMENT PRIMARY KEY,
    value 				INT,
    order_id 			INT,
    voucher_id 			INT,
    FOREIGN KEY (order_id) 		REFERENCES `Order`(order_id),
    FOREIGN KEY (voucher_id) 	REFERENCES Voucher(voucher_id)
);


-- Table: Store
CREATE TABLE Store (
    store_id 	INT AUTO_INCREMENT PRIMARY KEY,
    name 		VARCHAR(100)
);

-- Table: Category
CREATE TABLE Category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name 		VARCHAR(100)
);

set FOREIGN_KEY_CHECKS = 0;
DROP table User;

-- Table: Product
CREATE TABLE Product (
    product_id 	INT AUTO_INCREMENT PRIMARY KEY,
    name  		VARCHAR(100),
    description VARCHAR(100),
    price 		DECIMAL(10,2),
    stock 		INT,
    size 		INT,
    color		VARCHAR(100),
    category_id INT,
    store_id 	INT,
    FOREIGN KEY (category_id) 	REFERENCES Category(category_id),
    FOREIGN KEY (store_id) 		REFERENCES Store(store_id)
);

-- Table: Cart
CREATE TABLE Cart (
    cart_id 	INT AUTO_INCREMENT PRIMARY KEY,
    user_id 	INT,
    product_id 	INT,
    quantity 	INT,
    FOREIGN KEY (user_id) 		REFERENCES User(user_id),
    FOREIGN KEY (product_id) 	REFERENCES Product(product_id)
);

-- Table: Order_Item
CREATE TABLE Order_Item (
    order_item_id 	INT AUTO_INCREMENT PRIMARY KEY,
    quantity 		INT,
    product_id 		INT,
    order_id 		INT,
    FOREIGN KEY (product_id) 	REFERENCES Product(product_id),
    FOREIGN KEY (order_id) 		REFERENCES `Order`(order_id)
);

-------------------------------------------------------
INSERT INTO Category values 
(1, 'Giày'),
(2, 'Áo'),
(3, 'Quần'),
(4, 'Phụ kiện');

INSERT INTO Product (name, description, price, stock, size, color, category_id, store_id)
VALUES ('Cool Shirt', 'Comfortable shirt', 180000, 5, 56, 'white', 2, 1),
('Elegant Dress', 'Stylish evening dress', 250000, 8, 38, 'red', 3, 1),
('Running Shoes', 'Durable running shoes', 350000, 15, 42, 'blue', 1, 1),
('Leather Jacket', 'High-quality leather jacket', 500000, 4, 48, 'black', 2, 1),
('Casual T-Shirt', 'Breathable cotton t-shirt', 120000, 20, 40, 'green', 2, 1),
('Slim Fit Jeans', 'Stretchable slim fit jeans', 300000, 10, 36, 'dark blue', 3, 1),
('Wool Scarf', 'Soft wool scarf', 80000, 25, NULL, 'grey', 4, 1),
('Baseball Cap', 'Adjustable cap', 60000, 30, NULL, 'black', 4, 1),
('Formal Pants', 'Comfortable formal wear', 280000, 12, 34, 'brown', 3, 1),
('Sneakers', 'Stylish casual sneakers', 350000, 18, 43, 'white', 1, 1),
('Denim Jacket', 'Trendy denim jacket', 400000, 7, 46, 'light blue', 2, 1);


INSERT INTO Shipment 
values (1, '2024-12-23 14:30:00', 'Ho Chi Minh', 'Thu Duc', 'Viet Nam', '00700', 1); 

INSERT INTO Store values (1, 'Chi nhánh A');

INSERT INTO User values 
(1, 'assessment', 'gu@gmail.com', '12345', '328355333', 'Bắc Kạn', 'Ba Bể', 'Phúc Lộc', '73 tân hoà 2', 'nhà riêng'),
(3, 'nghia3', 'nghia3@gmail.com', '12345', '328355334', 'Bắc Kạn', 'Ba Bể', 'Phúc Lộc', '73 tân hoà 2', 'nhà riêng'),
(4, 'nghia4', 'nghia4@gmail.com', '12345', '328355334', 'Bắc Kạn', 'Ba Bể', 'Phúc Lộc', '73 tân hoà 2', 'nhà riêng'),
(5, 'nghia5', 'nghia5@gmail.com', '12345', '328355334', 'Bắc Kạn', 'Ba Bể', 'Phúc Lộc', '73 tân hoà 2', 'nhà riêng');

INSERT INTO Fee VALUES (null, NOW(), 'CreditCard', 50000, user_id); 
-------------------------------------------------------

CREATE PROCEDURE BuyProduct5()
BEGIN
    DECLARE u_id INT;
    DECLARE p_id INT;
    DECLARE f_id INT;
    DECLARE s_id INT;
    DECLARE p_price DECIMAL(10,2);
    DECLARE p_quantity INT;
    DECLARE total_price DECIMAL(10,2);
    DECLARE oi_id INT;
    DECLARE o_id INT;
    DECLARE last_month_date DATE;
    SET last_month_date = DATE_SUB(CURDATE(), INTERVAL 7 MONTH);
    -- SET last_month_date = NOW();

    -- Set initial values for user and product
    SET u_id = 5;
    SET p_id = 15;

    -- Retrieve the product price
    SELECT price INTO p_price
    FROM Product
    WHERE product_id = p_id;

    -- Insert Order_Item 
    INSERT INTO Order_Item (quantity, product_id) VALUES (5, p_id);
    SET oi_id = LAST_INSERT_ID();

    SELECT quantity INTO p_quantity
    FROM Order_Item
    WHERE order_item_id = LAST_INSERT_ID();

    INSERT INTO Shipment 
    VALUES (NULL, last_month_date, 'Ba Bể', 'Bắc Kạn', 'Vietnam', 26000, u_id);
    SET s_id = LAST_INSERT_ID();
     

    -- Insert Fee and get the fee ID
    INSERT INTO Fee VALUES (null, last_month_date, 'CreditCard', 50000, u_id); 
    SET f_id = LAST_INSERT_ID();

    -- Calculate total price for the Order
    SET total_price = p_price * p_quantity + 50000;

    -- Insert Order 
    INSERT INTO `Order` VALUES (null, last_month_date, total_price, u_id, f_id, s_id);
    SET o_id = LAST_INSERT_ID();

    -- Update Order_Item
    UPDATE Order_Item
    SET order_id = o_id
    WHERE order_item_id = oi_id;
END;


call BuyProduct5();