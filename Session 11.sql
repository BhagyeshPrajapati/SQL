select * from restaurants
where Rating > ( select avg(rating) from restaurants);
Select U.User_name ,
(Select Count(*) From orders_2 O where O.User_id= U.U_id ) As total_orders 
 From users U ;
create table Review_M( 
M_Id int ,
Rating float,
foreign key (M_Id) references movies(M_Id)
) ;
Select * from movies  
where M_Id in ( select M_Id from review_m where Rating = 5);
SELECT seller_name
FROM Sellers s
WHERE NOT EXISTS (SELECT * FROM Categories c WHERE NOT EXISTS ( SELECT * FROM Products p WHERE p.seller_id = s.seller_id AND p.category_id = c.category_id ));