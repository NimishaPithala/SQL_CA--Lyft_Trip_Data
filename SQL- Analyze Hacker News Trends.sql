select title, score
 from hacker_news
 order by score desc
 limit 5;

 select user, sum(score)
 from hacker_news
 group by 1
 having sum(score)>200;

select (309+304+282+517)/ 6366;

select user,count(*)
from hacker_news
where url="https://www.youtube.com/watch?v=dQw4w9WgXcQ"
group by user
order by 2 desc;

select case
   when url like '%github.com%' then 'GitHub'
   when url like '%medium.com'  then 'Medium'
   when url like '%newyorktimes.com' then 'New York Times'
   end as 'Source',count(*)
from hacker_news
group by 1;

select timestamp, strftime('%H', timestamp)
from hacker_news
group by 1
limit 20;

select strftime('%H', timestamp) as 'hour',
round(avg(score),1) as 'average score',
count(*) as 'Number of stories'
from hacker_news
group by 1
order by 2 desc;