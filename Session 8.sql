create table Orders_2 (
Order_id int primary key auto_increment ,
user_id int unique not null ,
payment_method varchar(35) ,
ammount float
);
INSERT INTO Orders_2 (user_id, payment_method ,ammount) VALUES
(101, 'UPI', 499.00),
(102, 'Credit Card', 1299.50),
(103, 'Debit Card', 799.00),
(104, 'Cash on Delivery', 249.99),
(105, 'Net Banking', 1599.00),
(106, 'Wallet', 699.50),
(107, 'UPI', 899.00),
(108, 'Credit Card', 349.99),
(109, 'Debit Card', 2199.00),
(110, 'Cash on Delivery', 499.50),
(111, 'Net Banking', 799.99),
(112, 'Wallet', 999.00),
(113, 'UPI', 1499.50),
(114, 'Credit Card', 275.00),
(115, 'Debit Card', 649.99),
(116, 'Cash on Delivery', 899.50),
(117, 'Net Banking', 1199.00),
(118, 'Wallet', 1599.99),
(119, 'UPI', 349.00),
(120, 'Credit Card', 799.50),
(121, 'Debit Card', 1299.99),
(122, 'Cash on Delivery', 599.00),
(123, 'Net Banking', 999.99),
(124, 'Wallet', 449.50),
(125, 'UPI', 1799.00);
select  payment_method, count(*) 
from orders_2
group by  payment_method ;
SELECT user_id, SUM(ammount) AS total_spend
FROM Orders_2
GROUP BY user_id;
select payment_method , Avg(ammount) As average_order_amount
 from orders_2 
 group by payment_method
 having avg(ammount) > 300;
 SELECT *
FROM Orders_2
WHERE ammount > 500;
SELECT payment_method, AVG(ammount) AS average_amount
FROM Orders_2
GROUP BY payment_method
HAVING AVG(ammount) > 500;