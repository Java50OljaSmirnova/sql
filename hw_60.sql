 --HW#60
 --select distinct model_name from cars where owner_id in (select id from car_owners where extract (year from age(birth_date))  > 
 --(select round(avg(date_part('year', age(birth_date)))) as "average age" from car_owners) * 1.1) 
 --
 --select name from models where engine_capacity = (select max(engine_capacity) from models);
 --
 --select model_name, count(*) as amount from cars group by model_name order by amount desc FETCH FIRST 2 ROWS ONLY;
 --
 --select model_name, count(color) as amount from cars group by model_name having count(*) >= 2 order by amount asc
 --
 --select (floor(extract (year from age(birth_date))/10) * 10 ) as min, 
 --(floor(extract (year from age(birth_date))/10) * 10 + 10) as max,  count(*) as frequency from car_owners
 -- group by min, max order by min