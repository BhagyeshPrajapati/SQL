create table Playlists(
	P_id int primary key auto_increment ,
    User_id int  ,
    Playlist_name varchar(85),
    Total__likes varchar(5)
);
INSERT INTO Playlists (User_id, Playlist_name, Total__likes) VALUES
(1, 'Morning Vibes', '125'),
(2, 'Workout Beats', '340'),
(3, 'Chill Evenings', '215'),
(4, 'Bollywood Hits', '980'),
(5, 'Road Trip Songs', '456'),
(6, 'Study Focus', '189'),
(7, 'Romantic Melodies', '612'),
(8, 'Party Mix', '845'),
(9, 'Lo-Fi Relax', '274'),
(10, 'Punjabi Power', '531'),
(11, 'Old Is Gold', '692'),
(12, 'Weekend Chill', '358'),
(13, 'Trending 2026', '777'),
(14, 'Devotional Songs', '145'),
(15, 'Monsoon Playlist', '423');
select 
		User_id ,
        Playlist_name ,
        total__likes ,
        row_number() Over() As "Row_Number" 
from playlists;
select 
		user_id, 
        Playlist_name,
        Total__likes,
        rank() over(partition by User_id order by Total__likes )
from playlists ;
select 
		user_id, 
        Playlist_name,
        Total__likes,
        dense_rank() over(partition by User_id order by Total__likes desc) as Most_popular_Playlist
from playlists ;
WITH RankedPlaylists AS (
    SELECT
        Playlist_name,
        User_id,
        Total__likes,
        ROW_NUMBER() OVER (
            PARTITION BY User_id
            ORDER BY CAST(Total__likes AS UNSIGNED) DESC
        ) AS rn
    FROM Playlists
)

SELECT
    Playlist_name,
    User_id,
    Total__likes
FROM RankedPlaylists
WHERE rn <= 2
ORDER BY User_id, rn;