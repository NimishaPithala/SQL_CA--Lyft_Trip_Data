select *
from nomnom;

select distinct neighborhood
from nomnom;

select distinct cuisine
from nomnom;

select *
from nomnom
where cuisine = 'Chinese';

select *
from nomnom
where review > 4;

select name
from nomnom
where cuisine = 'Italian' and price = '$$$';

select name
from nomnom
where name like '%meatball%';

select *
from nomnom
where neighborhood = 'Midtown' or neighborhood = 'Downtown' or neighborhood = 'chinatown'

select *
from nomnom
order by review desc
limit 10;

select name,
case
 when review > 4.5 then 'Entraordinary'
 when review > 4 then 'Excellent'
 when review > 3 then ' Good'
 when review > 2 then 'Fair'
 else 'poor'
 end as 'review'
 fROM nomnom;