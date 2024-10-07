INSERT INTO "--lowest_average_income--
select concat(emp.first_name, ' ', emp.last_name) as seller, -- склеиваем имя и фамилию продавцов
    floor(avg(s.quantity * p.price)) as average_income -- считаем среднее значение дохода и округляем его в меньшую сторону
from employees as emp -- выбираем таблицу с продавцами
left join sales as s -- присоединяем таблицу с продажами
on emp.employee_id = s.sales_person_id 
inner join products as p -- присоединяем таблицу с продуктами
on s.product_id = p.product_id
group by seller -- группируем данные по продавцам
having floor(avg(s.quantity * p.price)) < (select floor(avg(sl.quantity * pr.price)) as mid -- считаем средний доход по всем
                                            from products as pr 
                                            left join sales as sl 
                                            on pr.product_id = sl.product_id)
order by average_income" (seller,average_income) VALUES
	 ('Stearns MacFeather',46407),
	 ('Ann Dull',55090),
	 ('Morningstar Greene',88124),
	 ('Marjorie Green',109395),
	 ('Johnson White',126133),
	 ('Anne Ringer',136767),
	 ('Cheryl Carson',139818),
	 ('Reginald Blotchet-Halls',151773),
	 ('Charlene Locksley',152007),
	 ('Michael O''Leary',161108);
INSERT INTO "--lowest_average_income--
select concat(emp.first_name, ' ', emp.last_name) as seller, -- склеиваем имя и фамилию продавцов
    floor(avg(s.quantity * p.price)) as average_income -- считаем среднее значение дохода и округляем его в меньшую сторону
from employees as emp -- выбираем таблицу с продавцами
left join sales as s -- присоединяем таблицу с продажами
on emp.employee_id = s.sales_person_id 
inner join products as p -- присоединяем таблицу с продуктами
on s.product_id = p.product_id
group by seller -- группируем данные по продавцам
having floor(avg(s.quantity * p.price)) < (select floor(avg(sl.quantity * pr.price)) as mid -- считаем средний доход по всем
                                            from products as pr 
                                            left join sales as sl 
                                            on pr.product_id = sl.product_id)
order by average_income" (seller,average_income) VALUES
	 ('Burt Gringlesby',167993),
	 ('Abraham Bennet',170983),
	 ('Sylvia Panteley',179517),
	 ('Meander Smith',188075),
	 ('Sheryl Hunter',225515);
