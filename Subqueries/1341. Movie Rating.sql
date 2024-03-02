select (select u.name from Users u inner join
MovieRating uu on u.user_id=uu.user_id 
group by u.user_id 
order by count(*) desc,u.name asc limit 1)
as Results

union all

select (select m.title from
Movies m inner join MovieRating mm
on m.movie_id=mm.movie_id where DATE_FORMAT(
mm.created_at,'%Y-%m') = '2020-02'
 group by m.movie_id order by 
 avg(mm.rating) desc,m.title asc limit 1 )
 as Results;
