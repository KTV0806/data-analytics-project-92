INSERT INTO "select to_char(s.sale_date, 'YYYY-MM') as selling_month, --выбираем из даты год и месяц
	count(distinct s.customer_id) as total_customers, --считаем количество уникальных покупателей
	round(sum(s.quantity * p.price), 0) as income --считаем доход и округляем его
from sales as s--выбираем таблицу с продажами
inner join products as p --присоединяем к ней таблицу с продуктами
on s.product_id  = p.product_id 
group by to_char(s.sale_date, 'YYYY-MM')--группируем данные по дате
order by to_char(s.sale_date, 'YYYY-MM'); --сортируем данные по дате" (selling_month,total_customers,income) VALUES
	 ('1992-09',226,2618930332),
	 ('1992-10',230,8358113699),
	 ('1992-11',228,8031353738),
	 ('1992-12',229,7708189847);
