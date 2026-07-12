Create table Orders ( 
Order_id int primary key auto_increment , 
User_name varchar(85) , 
Total_ammount float , 
Order_date varchar(25)
);
INSERT INTO Orders (User_name, Total_ammount, Order_date) VALUES
('Aarav Sharma', 549.99, '2026-01-03'),
('Priya Patel', 1299.50, '2026-01-05'),
('Sneha Verma', 249.75, '2026-01-10'),
('Vikram Singh', 1599.00, '2026-01-12'),
('Ananya Gupta', 699.99, '2026-01-15'),
('Karan Joshi', 899.50, '2026-01-18'),
('Neha Shah', 349.00, '2026-01-20'),
('Rahul Kumar', 2199.99, '2026-01-22'),
('Ishita Desai', 499.25, '2026-01-25');
insert into orders ( user_name , Order_date) value
('Rohan Mehta',  '2026-01-08');
select user_name ,  count(order_id) As Order_count
from orders
group by User_name;
SELECT AVG(Total_ammount) AS average_total_amount
FROM Orders;
SELECT 
    MAX(Total_ammount) AS highest_order_amount,
    MIN(Total_ammount) AS lowest_order_amount
FROM Orders;
SELECT SUM(Total_ammount) AS total_sales
FROM Orders;
