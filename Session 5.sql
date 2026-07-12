create table restaurants ( 
id int primary key auto_increment , 
R_name varchar(85) , 
Cuisine varchar(35) , 
Rating float , 
City varchar(75)
);
INSERT INTO restaurants (R_name, Cuisine, Rating, City) VALUES
('Barbeque Nation', 'North Indian', 4.5, 'Ahmedabad'),
('The Grand Thakar', 'Gujarati', 4.6, 'Ahmedabad'),
('Dominos Pizza', 'Italian', 4.2, 'Surat'),
('Rajdhani Thali', 'Rajasthani', 4.7, 'Vadodara'),
('Honest Restaurant', 'Fast Food', 4.3, 'Rajkot');
SELECT *
FROM restaurants
WHERE Rating > 4.0 AND City IN ('Ahmedabad', 'Surat');
select * from restaurants
where R_name like "Swa%";
select * from restaurants
where Rating between 3.5 and 4.5 ;
select * from restaurants
where Cuisine in ("Chinese" , "Italian" , "South Indian") ;