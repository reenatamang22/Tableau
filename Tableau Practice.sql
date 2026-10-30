create database tableau_practice;

use tableau_practice;


CREATE TABLE customers (
    customer_id   INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    city          VARCHAR(30),
    segment       VARCHAR(20),
    signup_date   DATE);
    
CREATE TABLE orders (
    order_id         INT PRIMARY KEY,
    customer_id      INT NOT NULL,
    order_date       DATE,
    product_category VARCHAR(30),
    quantity         INT,
    unit_price       DECIMAL(10,2),
    status           VARCHAR(15),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id));
    
INSERT INTO customers (customer_id, customer_name, city, segment, signup_date) VALUES
(1,  'Aarav Sharma',   'Pune',      'Premium',  '2023-01-15'),
(2,  'Priya Nair',     'Mumbai',    'Regular',  '2023-02-10'),
(3,  'Rohan Mehta',    'Delhi',     'Regular',  '2023-03-05'),
(4,  'Sneha Patil',    'Pune',      'Premium',  '2023-03-22'),
(5,  'Vikram Singh',   'Bengaluru', 'Regular',  '2023-04-18'),
(6,  'Anjali Gupta',   'Mumbai',    'Premium',  '2023-05-02'),
(7,  'Karan Desai',    'Ahmedabad', 'Regular',  '2023-06-11'),
(8,  'Meera Iyer',     'Chennai',   'Regular',  '2023-07-07'),
(9,  'Rahul Verma',    'Delhi',     'Premium',  '2023-08-19'),
(10, 'Pooja Kulkarni', 'Pune',      'Regular',  '2023-09-03'),
(11, 'Amit Joshi',     'Nagpur',    'Regular',  '2023-10-14'),
(12, 'Neha Reddy',     'Hyderabad', 'Premium',  '2023-11-25'),
(13, 'Sanjay Rao',     'Bengaluru', 'Regular',  '2024-01-09'),
(14, 'Divya Menon',    'Kochi',     'Regular',  '2024-02-16'),
(15, 'Arjun Kapoor',   'Mumbai',    'Premium',  '2024-03-28');

INSERT INTO orders (order_id, customer_id, order_date, product_category, quantity, unit_price, status) VALUES
(101, 1,  '2024-01-05', 'Electronics', 1, 45000.00, 'Delivered'),
(102, 2,  '2024-01-12', 'Clothing',    3,  1200.00, 'Delivered'),
(103, 3,  '2024-01-20', 'Books',       5,   350.00, 'Delivered'),
(104, 4,  '2024-02-02', 'Home',        2,  4500.00, 'Delivered'),
(105, 5,  '2024-02-14', 'Electronics', 1, 22000.00, 'Returned'),
(106, 6,  '2024-02-25', 'Clothing',    4,  1800.00, 'Delivered'),
(107, 1,  '2024-03-03', 'Books',       2,   500.00, 'Delivered'),
(108, 7,  '2024-03-15', 'Home',        1,  8000.00, 'Cancelled'),
(109, 8,  '2024-03-28', 'Electronics', 2, 15000.00, 'Delivered'),
(110, 9,  '2024-04-04', 'Clothing',    2,  2500.00, 'Delivered'),
(111, 10, '2024-04-18', 'Books',       3,   400.00, 'Delivered'),
(112, 4,  '2024-04-27', 'Electronics', 1, 60000.00, 'Delivered'),
(113, 11, '2024-05-06', 'Home',        3,  2200.00, 'Delivered'),
(114, 12, '2024-05-19', 'Clothing',    5,  1500.00, 'Delivered'),
(115, 2,  '2024-06-01', 'Electronics', 1, 18000.00, 'Delivered'),
(116, 13, '2024-06-14', 'Books',       4,   450.00, 'Delivered'),
(117, 6,  '2024-06-29', 'Home',        2,  6000.00, 'Returned'),
(118, 14, '2024-07-08', 'Clothing',    2,  3000.00, 'Delivered'),
(119, 15, '2024-07-21', 'Electronics', 1, 75000.00, 'Delivered'),
(120, 3,  '2024-08-02', 'Home',        1,  9500.00, 'Delivered'),
(121, 9,  '2024-08-16', 'Books',       6,   300.00, 'Delivered'),
(122, 1,  '2024-08-30', 'Clothing',    3,  2000.00, 'Delivered'),
(123, 5,  '2024-09-09', 'Home',        2,  3500.00, 'Cancelled'),
(124, 12, '2024-09-22', 'Electronics', 2, 30000.00, 'Delivered'),
(125, 8,  '2024-10-05', 'Books',       2,   600.00, 'Delivered'),
(126, 10, '2024-10-18', 'Clothing',    1,  4000.00, 'Delivered'),
(127, 15, '2024-11-03', 'Home',        3,  5500.00, 'Delivered'),
(128, 4,  '2024-11-20', 'Books',       4,   550.00, 'Delivered'),
(129, 7,  '2024-12-07', 'Electronics', 1, 28000.00, 'Delivered'),
(130, 6,  '2024-12-24', 'Clothing',    6,  1100.00, 'Delivered');
 