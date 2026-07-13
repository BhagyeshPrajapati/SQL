select I.I_Id ,I.I_name , C.C_id, C.Influrncer1_id , C.Influrncer2_id , C.Collab_date
From influencers I 
left join collaborations C 
On I.I_id = C.Influrncer1_id 
union
select I.I_Id ,I.I_name , C.C_id, C.Influrncer1_id , C.Influrncer2_id , C.Collab_date
From influencers I 
right join collaborations C 
On I.I_id = C.Influrncer1_id ;
create table Playlists ( 
P_ID int primary key auto_increment ,
User_id int unique not null ,
Playlist_name varchar(35) unique not null ,
Parent_Playlist_id int ,
foreign key (Parent_Playlist_id) references playlist(playlist_id)
);
INSERT INTO Playlists (User_id, Playlist_name, Parent_Playlist_id) VALUES
(101, 'My Favorites', 1),
(102, 'Workout Hits', 1),
(103, 'Morning Vibes', 2),
(104, 'Road Trip', 2),
(105, 'Party Mix', 3),
(106, 'Romantic Songs', 3),
(107, 'Study Beats', 4),
(108, 'Chill Mood', 4),
(109, 'Old Classics', 5),
(110, 'Bollywood 90s', 5),
(111, 'Punjabi Hits', 6),
(112, 'English Pop', 6),
(113, 'Lo-Fi Music', 7),
(114, 'Gym Motivation', 7),
(115, 'Sad Songs', 8),
(116, 'Travel Playlist', 8),
(117, 'Dance Floor', 9),
(118, 'Relaxing Tunes', 9),
(119, 'Devotional', 1),
(120, 'Instrumentals', 2),
(121, 'Rock Collection', 3),
(122, 'Hip Hop Beats', 4),
(123, 'Love Songs', 5),
(124, 'Festival Songs', 6),
(125, 'Sleep Music', 7);
SELECT
    p1.P_id,
    p1.user_id,
    p1.playlist_name AS playlist_name,
    p2.playlist_name AS parent_playlist_name
FROM Playlists AS p1
JOIN Playlists AS p2
ON p1.parent_playlist_id = p2.P_id;
create table Users( 
U_id int primary key auto_increment ,
User_name varchar(85) unique not null
);
insert into users(User_Name) values
("Bhagyesh"),
("Shubham"),
("Krishna"),
("Divyata"),
("Sakhsi"),
("Vishwa"),
("Arvi"),
("Nihit"),
("Dhruv"),
("Dhruval"),
("Meet"),
("Hemaxi"),
("Tirth"),
("Jay");
select * from users 
order by U_id asc;
create Table Orders_1 ( 
Order_id int primary key auto_increment ,
User_id int ,
Order_date varchar(30) ,
foreign key(User_id) references users (U_id)
);
insert into orders_1 ( user_id , Order_date) values
(1 , "2025-05-16" ),
(3 , "2025-06-26" ),
(12 , "2025-12-22" ),
(10 , "2025-05-16" ),
(13 , "2026-07-09" ),
(12 , "2015-04-22" ),
(5 , "2020-12-05" ),
(9 , "2021-06-10" ),
(13 , "2022-04-22" ),
(14 , "2026-08-15" );
select * from orders_1 ;
create table Payments (
P_id int primary key auto_increment ,
Order_id int ,
Ammount float ,
foreign key (Order_id) references orders_1(order_id) 
);
insert into payments ( order_id , ammount ) values
(1,250),
(2,450),
(3,1250),
(4,850),
(5,650),
(6,950),
(7,2500),
(8,3500),
(9,2750),
(10,3250);
select * from payments ;
select 
	  U.User_name , 
      O.Order_date , 
      P.Ammount
from users U 
left join orders_1 O 
on U.U_id = O.User_id
left join payments P 
on O.Order_id = P.Order_id ;
SELECT
    r.R_Name,
    r.City
FROM Restaurants r
INNER JOIN Reviews rv
ON r.id = rv.R_id
GROUP BY r.id, r.R_Name, r.City;
SELECT
    p.product_name,
    c.category_name
FROM Products AS p
INNER JOIN Categories AS c
ON p.category_id = c.category_id; -- INNER JOIN is generally more efficient because it returns only matching rows.
SELECT
    p.product_name,
    c.category_name
FROM Products AS p
LEFT JOIN Categories AS c
ON p.category_id = c.category_id; -- LEFT JOIN processes all rows from the left table, even when there is no matching category.