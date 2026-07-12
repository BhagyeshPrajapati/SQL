select * from products 
order by price asc ;
select * from products
order by price desc
limit 5 ;
create table Movies (
Title varchar(85) primary key ,
Release_year varchar(25) ,
Rating Float 
);
INSERT INTO Movies (Title, Release_year, Rating) VALUES
('3 Idiots', '2009', 8.4),
('Dangal', '2016', 8.3),
('PK', '2014', 8.1),
('Sholay', '1975', 8.2),
('Zindagi Na Milegi Dobara', '2011', 8.2),
('Queen', '2014', 8.1),
('Bajrangi Bhaijaan', '2015', 8.1),
('Andhadhun', '2018', 8.2),
('Drishyam', '2015', 8.2),
('Chak De! India', '2007', 8.1),
('Kabir Singh', '2019', 7.0),
('War', '2019', 6.5),
('Pathaan', '2023', 6.0),
('Jawan', '2023', 7.1),
('Stree', '2018', 7.5);
select * from movies
order by Release_year desc , Rating desc ;
select * from restaurants
order by R_name asc 
limit 10 ;
create table songs ( 
Id int primary key auto_increment ,
Song_name varchar(85) ,
Play_count float ,
Added_date varchar(25) 
);
INSERT INTO songs (Song_name, Play_count, Added_date) VALUES
('Kesariya', 485, '2026-01-02'),
('Tum Hi Ho', 420, '2026-01-04'),
('Apna Bana Le', 315, '2026-01-06'),
('Raataan Lambiyan', 450, '2026-01-08'),
('Chaleya', 498, '2026-01-10'),
('Ghungroo', 275, '2026-01-12'),
('Kala Chashma', 499, '2026-01-14'),
('Bekhayali', 190, '2026-01-16'),
('Zinda Banda', 385, '2026-01-18'),
('Malang Sajna', 245, '2026-01-20'),
('Tere Vaaste', 340, '2026-01-22'),
('Heeriye', 475, '2026-01-24'),
('Satranga', 165, '2026-01-26'),
('O Maahi', 410, '2026-01-28'),
('Ranjha', 490, '2026-02-01'),
('Dil Diyan Gallan', 460, '2026-02-03'),
('Kaise Hua', 355, '2026-02-05'),
('Phir Aur Kya Chahiye', 280, '2026-02-07'),
('Tera Ban Jaunga', 395, '2026-02-09'),
('Agar Tum Saath Ho', 497, '2026-02-11'),
('Mast Magan', 225, '2026-02-13'),
('Saiyaara', 145, '2026-02-15'),
('Ilahi', 330, '2026-02-17'),
('Nashe Si Chadh Gayi', 488, '2026-02-19'),
('Khairiyat', 435, '2026-02-21');
SELECT * FROM songs
ORDER BY play_count DESC, added_date DESC
LIMIT 3; 