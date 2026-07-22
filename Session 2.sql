create database Foodie_App ;
use foodie_app ;
create table Restaurants ( 
	R_id int primary key auto_increment ,
	R_Name varchar(100) ,
	Cuisine varchar(50) ,
	Rating float ,
	Location varchar(100) 
);
Create table Users (
	User_id int primary key auto_increment ,
    User_Name varchar(100) ,
    Email varchar(65) unique,
    phone_number varchar(15) unique,
    Created_at datetime default current_timestamp
);
create table Product (
	Product_id int primary key auto_increment ,
    Product_name varchar ,
    Price float ,
    seller_Id int 
);-- Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',     Price float ,     seller_Id int  )' at line 3

create table Product (
	Product_id int primary key auto_increment ,
    Product_name varchar(85) ,
    Price float ,
    seller_Id int 
);