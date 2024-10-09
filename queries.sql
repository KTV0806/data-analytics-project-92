--top_10_total_income--
select concat(e.first_name, ' ', e.last_name) as seller, -- склеиваем имя и фамилию продавцов
	count(s.sales_person_id) as operations, -- считаем количество операций
	floor(sum(s.quantity * p.price)) as income -- считаем доход и округляем его в меньшую сторону
from employees as e -- выбираем таблицу
left join sales as s -- присоединяем таблицу с продажами
on e.employee_id = s.sales_person_id
left join products as p -- присоединяем таблицу с продуктами
on s.product_id = p.product_id
group by seller -- группируем данные по продавцам
order by income desc nulls last  -- сортируем данные по убыванию дохода, убираем нулевые значения в конец списка
limit 10; -- ограничиваем выборку десятью записями

--lowest_average_income--
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
order by average_income; -- сортируем данные по среднему дохлду по возрастанию

--day_of_the_week_income--
with tab as (
select concat(emp.first_name, ' ', emp.last_name) as seller, -- склеиваем имя и фамилию продавцов
	to_char(s.sale_date, 'day') as day_of_week, -- выбираем день недели из даты 
	floor(sum(s.quantity * p.price)) as income -- считаем доход и округляем его в меньшую сторону
from employees as emp -- выбираем таблицу с продавцами
left join sales as s -- присоединяем таблицу с продажами
on emp.employee_id = s.sales_person_id 
inner join products as p -- присоединяем таблицу с продуктами
on s.product_id = p.product_id
group by seller, extract('isodow'   from sale_date), to_char(s.sale_date, 'day') -- группируем данные по продавцам и дням недели
order by extract('isodow'  from sale_date), seller -- сортируем данные по дням недели
)
select seller, 
	concat(day_of_week, ' ') as day_of_week, -- добавляем пробел просле дня недели
	income
from tab;

--age_groups--
with tab as ( -- создаем СТЕ
select 
	case -- прописываем возрастные категории покупателей
		when age between 16 and 25 then '16-25'
		when age between 26 and 40 then '26-40'
		else '40+'
	end as age_category -- присваиваем новому столбцу альяс
from customers -- выбираем таблицу с покупателями
)
select *,
	count(age_category)	as age_count -- считаем количество покупателей в категориях
from tab -- выбираем СТЕ
group by age_category -- группируем данные по возрастным категориям
order by age_category; -- сортируем данные по возрастным категориям

--customers_by_month--
select to_char(s.sale_date, 'YYYY-MM') as selling_month, -- выбираем год и месяц из столбца с датами
	count(distinct s.customer_id) as total_customers, -- считаем количество уникальные покупателей
	floor(sum(s.quantity * p.price)) as income -- считаем доход и округляем его в меньшую сторону
from sales as s -- выбираем таблицу с продажами
inner join products as p -- присоединяем таблицу с продуктами
on s.product_id  = p.product_id 
group by to_char(s.sale_date, 'YYYY-MM') -- группируем данные по месяцу
order by to_char(s.sale_date, 'YYYY-MM'); -- сортируем данные по месяцу

--customers_count--
select count(customer_id) as customers_count -- считаем количество покупателей
from customers; -- выбираем таблицу

--special_offer--
with tab as (   --создаем СТЕ 
select concat(e.first_name,' ', e.last_name) as seller, --соединяем имя и фамилию продавца в один столбец
	row_number() --номеруем строки по партиции покупателя и сотртируем по цене товара
		over (partition by c.customer_id order by s.sale_date) as rn,
	concat(c.first_name, ' ', c.last_name) as customer, --соединяем имя и фамилию покупателя в один столбец
	s.sale_date,
	c.customer_id,
	p.price
from sales as s --выбираем таблицу с продажами
inner join products as p --присоединяем таблицу с продуктами
on s.product_id = p.product_id 
inner join customers as c --присоединяем таблицу с покупателями
on s.customer_id = c.customer_id
inner join employees as e --присоединяем таблицу с продавцами
on e.employee_id = s.sales_person_id
)
select customer, sale_date, seller --выбираем столбцы из СТЕ
from tab
where price = 0 and rn = 1 --указываем номер строки с наименьшей ценой товара
order by customer_id; --сортируем данные по ID покупателя