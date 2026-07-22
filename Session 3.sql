create table Playlist_1 ( 
 Playlist_id int primary key auto_increment ,
 Song_name Varchar (85) , 
 Created_by varchar (85) not null,
 Artist varchar(65) not null
 );
Alter table playlist_1 add column Current_Favorite_song varchar(85) ;
insert into playlist_1 ( Song_name , Created_by , Artist , Current_Favorite_song) values
("BUleya" , "Bhagyesh" , "Arijit Mishra" , "Ranjhna" ),
("Ye tune Kya kiya" , "Shubham" , "Abhijit Shawant" , "Jo Tere Sang" ) ,
("Piya Ghar Avenge" , "Krishna" , "Kailash Khair" , "Mera Yaar") ;
Select * from playlist_1 ;
update playlist_1 Set artist = "KK" Where playlist_id=2 ;
select * from playlist_1 ;
alter table playlist_1 add column Duration_seconds float ;
update playlist_1 set Duration_seconds = 120 where playlist_id=1;
update playlist_1 set Duration_seconds = 325 where playlist_id=2;
update playlist_1 set Duration_seconds = 485 where playlist_id=3;
delete from playlist_1 where Duration_seconds > 120 ;
select * from playlist_1;
update playlist_1 Set Song_name = "Remix" Where Artist="AP Dhillon" and Duration_seconds >180 ;