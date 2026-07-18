With High_Rated_Products as (
	Select 
		P.product_id,
        P.product_name,
        P.category,
        P.price,
        R.Rating
	from products p
    Left join reviews R 
    On P.product_id = R.product_id
    where Rating>4.5
    )
select * from High_Rated_Products ; 

With Ahmedabad_restaurants as (
	select 
		id,
        r_name,
        city,
        Charges
    from restaurants
    where City ="Ahmedabad"
)
select * from Ahmedabad_restaurants
where charges < 50 ;
with Top_Users As (
	select 
		User_name As "Name" ,
        Followers AS "Count",
        "Top Followed user" AS "Type"
	from users 
    order by Followers desc 
    limit 3
),
Top_post As (
	Select
		Contact("Post" , Post_id) As "Name" ,
        Likes As Count ,
        'Top Liked Post' As 'Type'
	from Post
    order by Likes desc
    limit 3
)
Select * from Top_user
union all 
select * from Top_post;
WITH RECURSIVE Next7Days AS
(
    SELECT CURDATE() AS booking_date

    UNION ALL

    SELECT DATE_ADD(booking_date, INTERVAL 1 DAY)
    FROM Next7Days
    WHERE booking_date < CURDATE() + INTERVAL 6 DAY
)
SELECT booking_date FROM Next7Days;

WITH PopularUsers AS(
    SELECT
        user_id,
        user_name,
        followers
    FROM Users
    WHERE followers > 1000
)
SELECT * FROM PopularUsers;