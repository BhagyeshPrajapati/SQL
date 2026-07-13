create database Music_streaming_app ;
use Music_streaming_app ;
create table Playlist ( 
Playlist_id int primary key auto_increment ,
 Playlist_name Varchar (85) , 
 Created_by varchar (85) 
 );
 insert into playlist (playlist_name , Created_by) values 
 ("GYM" , "Bhagyesh" ) ,
 ("Meditation" , "Shubham"),
 ("Dance" , "Amit"),
 ("POP" , "Shreya"),
 ("Classic" , "Anju"),
 ("Late night drive" , "Surbhi"),
 ("Long Drive" , "Divya"),
 ("Chilling" , "Bharti"),
 ("Vibing" , "Sakshi"),
 ("Cricket" , "Krishna");
 select * from playlist 
 where created_by ="Amit" ;
