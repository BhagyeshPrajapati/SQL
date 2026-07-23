Create Table Orders ( 
	Order_id int primary key auto_increment ,
    User_id int ,
    Order_date date ,
    Total_ammount float 
);
select 
	order_id ,
    User_id,
    Order_id,
    Total_ammount,
    Lag(total_ammount) Over ( partition by user_id order by order_date) As Previous_order_ammount
    from orders 
    order by User_id , Order_date ;
select 
	order_id ,
    User_id,
    Order_id,
    Total_ammount,
    Lead(total_ammount) Over ( partition by user_id order by order_date) As Next_order_ammount
from orders 
order by User_id , Order_date ;
select
	Order_id,
    User_id,
    Order_date,
    Total_ammount,
    sum(Total_ammount) over(partition by User_id order by Order_date rows between unbounded preceding and current row) as running_total
from orders
order by User_id , Order_date ;
select 
	Order_id,
    User_id,
    Order_date,
    Total_ammount,
    sum(Total_ammount)over(partition by User_id order by Order_date rows between 2 preceding and current row) / 
    count(*) over( partition by User_id order by Order_date rows between 2 preceding and current row) as Moving_avg
from orders
order by User_id , Order_date ;