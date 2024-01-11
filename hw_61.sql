--HW#61
--Task#1
SELECT * FROM employees;
SELECT * FROM departments;
--
SELECT o.* FROM employees o 
WHERE o.id 
NOT IN (select manager_id from departments);
--
SELECT * FROM employees o 
WHERE not exists (
select * from departments where o.id = manager_id
);
--
SELECT e.* 
FROM employees e 
LEFT JOIN departments d 
ON e.id = d.manager_id
WHERE d.manager_id is null;
--
--Task#2
SELECT distinct a.id 
FROM test_a a 
lEFT JOIN test_b b on b.id = a.id 
WHERE b.id is null
--
--Task#3
select u.* 
from users u 
join training_details td on u.id = td.user_id
where td.training_date in (
select training_date from training_details 
	where user_id = u.id 
	group by training_date having count(*) > 1)
order by training_date desc
--
--Task#4
select id
from employees
order by id desc
limit 1
--
--Task#5
select sum(positive_number.x) as "amount of positive number", 
sum(negative_number.x) as "amount of negative number"
from (select x from test_name_a where x >= 0) positive_number 
full join (select x from test_name_a where x < 0) negative_number
on positive_number.x = negative_number.x
--
--Task#6
