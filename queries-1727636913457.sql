INSERT INTO "select concat(emp.first_name, emp.last_name) as seller, 
    round(avg(s.quantity*p.price), 0) as average_income
from employees as emp 
left join sales as s 
on emp.employee_id = s.sales_person_id 
inner join products as p 
on s.product_id = p.product_id
group by seller
having round(avg(s.quantity*p.price), 0) < (select round(avg(sl.quantity*pr.price), 0) as mid 
                                            from products as pr 
                                            left join sales as sl 
                                            on pr.product_id = sl.product_id)
order by average_income" (seller,average_income) VALUES
	 ('StearnsMacFeather',46407),
	 ('AnnDull',55091),
	 ('MorningstarGreene',88124),
	 ('MarjorieGreen',109396),
	 ('JohnsonWhite',126134),
	 ('AnneRinger',136768),
	 ('CherylCarson',139818),
	 ('ReginaldBlotchet-Halls',151773),
	 ('CharleneLocksley',152007),
	 ('MichaelO''Leary',161108);
INSERT INTO "select concat(emp.first_name, emp.last_name) as seller, 
    round(avg(s.quantity*p.price), 0) as average_income
from employees as emp 
left join sales as s 
on emp.employee_id = s.sales_person_id 
inner join products as p 
on s.product_id = p.product_id
group by seller
having round(avg(s.quantity*p.price), 0) < (select round(avg(sl.quantity*pr.price), 0) as mid 
                                            from products as pr 
                                            left join sales as sl 
                                            on pr.product_id = sl.product_id)
order by average_income" (seller,average_income) VALUES
	 ('BurtGringlesby',167993),
	 ('AbrahamBennet',170983),
	 ('SylviaPanteley',179518),
	 ('MeanderSmith',188076),
	 ('SherylHunter',225516);
