INSERT INTO "select concat(emp.first_name, emp.last_name) as seller,
	count(emp.employee_id) as operations,
	round(sum(s.quantity*p.price), 0) as income 
from employees as emp
left join sales as s
on emp.employee_id = s.sales_person_id
inner join products as p 
on s.product_id = p.product_id 
group by seller
order by income desc 
limit 10 " (seller,operations,income) VALUES
	 ('DirkStringer',4192,4925137932),
	 ('MichelDeFrance',4688,3260240834),
	 ('AlbertRinger',4695,2700327941),
	 ('HeatherMcBadden',4139,1873192319),
	 ('Innesdel Castillo',4674,1762202128),
	 ('AbrahamBennet',9460,1617501170),
	 ('DeanStraight',4195,1256032202),
	 ('LiviaKarsen',2564,1056902109),
	 ('SherylHunter',4686,1056767863),
	 ('MichaelO''Leary',5757,927500460);
