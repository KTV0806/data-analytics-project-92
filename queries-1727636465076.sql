INSERT INTO "select concat(emp.first_name, emp.last_name) as seller,
	to_char(s.sale_date, 'day') as day_of_week,
	round(sum(s.quantity*p.price), 0) as income
from employees as emp 
left join sales as s 
on emp.employee_id = s.sales_person_id 
inner join products as p 
on s.product_id = p.product_id
group by seller, extract('isodow'   from sale_date), to_char(s.sale_date, 'day')
order by extract('isodow'  from sale_date), seller" (seller,day_of_week,income) VALUES
	 ('AbrahamBennet','monday   ',231845241),
	 ('AlbertRinger','monday   ',392378038),
	 ('AnnDull','monday   ',39656842),
	 ('AnneRinger','monday   ',53386961),
	 ('BurtGringlesby','monday   ',118429815),
	 ('CharleneLocksley','monday   ',108450663),
	 ('CherylCarson','monday   ',77977657),
	 ('DeanStraight','monday   ',192550177),
	 ('DirkStringer','monday   ',759341454),
	 ('HeatherMcBadden','monday   ',293014643);
INSERT INTO "select concat(emp.first_name, emp.last_name) as seller,
	to_char(s.sale_date, 'day') as day_of_week,
	round(sum(s.quantity*p.price), 0) as income
from employees as emp 
left join sales as s 
on emp.employee_id = s.sales_person_id 
inner join products as p 
on s.product_id = p.product_id
group by seller, extract('isodow'   from sale_date), to_char(s.sale_date, 'day')
order by extract('isodow'  from sale_date), seller" (seller,day_of_week,income) VALUES
	 ('Innesdel Castillo','monday   ',260992756),
	 ('JohnsonWhite','monday   ',98560782),
	 ('LiviaKarsen','monday   ',132386625),
	 ('MarjorieGreen','monday   ',97539868),
	 ('MeanderSmith','monday   ',52160238),
	 ('MichaelO''Leary','monday   ',138096278),
	 ('MichelDeFrance','monday   ',479584921),
	 ('MorningstarGreene','monday   ',67381291),
	 ('ReginaldBlotchet-Halls','monday   ',103178571),
	 ('SherylHunter','monday   ',153301531);
INSERT INTO "select concat(emp.first_name, emp.last_name) as seller,
	to_char(s.sale_date, 'day') as day_of_week,
	round(sum(s.quantity*p.price), 0) as income
from employees as emp 
left join sales as s 
on emp.employee_id = s.sales_person_id 
inner join products as p 
on s.product_id = p.product_id
group by seller, extract('isodow'   from sale_date), to_char(s.sale_date, 'day')
order by extract('isodow'  from sale_date), seller" (seller,day_of_week,income) VALUES
	 ('StearnsMacFeather','monday   ',30778276),
	 ('SylviaPanteley','monday   ',96399427),
	 ('AbrahamBennet','tuesday  ',259058032),
	 ('AlbertRinger','tuesday  ',419021705),
	 ('AnnDull','tuesday  ',38097808),
	 ('AnneRinger','tuesday  ',55417862),
	 ('BurtGringlesby','tuesday  ',114454018),
	 ('CharleneLocksley','tuesday  ',102419646),
	 ('CherylCarson','tuesday  ',76905547),
	 ('DeanStraight','tuesday  ',183459092);
INSERT INTO "select concat(emp.first_name, emp.last_name) as seller,
	to_char(s.sale_date, 'day') as day_of_week,
	round(sum(s.quantity*p.price), 0) as income
from employees as emp 
left join sales as s 
on emp.employee_id = s.sales_person_id 
inner join products as p 
on s.product_id = p.product_id
group by seller, extract('isodow'   from sale_date), to_char(s.sale_date, 'day')
order by extract('isodow'  from sale_date), seller" (seller,day_of_week,income) VALUES
	 ('DirkStringer','tuesday  ',734550038),
	 ('HeatherMcBadden','tuesday  ',267891418),
	 ('Innesdel Castillo','tuesday  ',285473369),
	 ('JohnsonWhite','tuesday  ',100275590),
	 ('LiviaKarsen','tuesday  ',145696078),
	 ('MarjorieGreen','tuesday  ',102488971),
	 ('MeanderSmith','tuesday  ',63913954),
	 ('MichaelO''Leary','tuesday  ',125258271),
	 ('MichelDeFrance','tuesday  ',467420387),
	 ('MorningstarGreene','tuesday  ',67737441);
INSERT INTO "select concat(emp.first_name, emp.last_name) as seller,
	to_char(s.sale_date, 'day') as day_of_week,
	round(sum(s.quantity*p.price), 0) as income
from employees as emp 
left join sales as s 
on emp.employee_id = s.sales_person_id 
inner join products as p 
on s.product_id = p.product_id
group by seller, extract('isodow'   from sale_date), to_char(s.sale_date, 'day')
order by extract('isodow'  from sale_date), seller" (seller,day_of_week,income) VALUES
	 ('ReginaldBlotchet-Halls','tuesday  ',89298154),
	 ('SherylHunter','tuesday  ',163754751),
	 ('StearnsMacFeather','tuesday  ',31056506),
	 ('SylviaPanteley','tuesday  ',99289901),
	 ('AbrahamBennet','wednesday',214842815),
	 ('AlbertRinger','wednesday',403718425),
	 ('AnnDull','wednesday',35589006),
	 ('AnneRinger','wednesday',46106241),
	 ('BurtGringlesby','wednesday',119047498),
	 ('CharleneLocksley','wednesday',106731411);
INSERT INTO "select concat(emp.first_name, emp.last_name) as seller,
	to_char(s.sale_date, 'day') as day_of_week,
	round(sum(s.quantity*p.price), 0) as income
from employees as emp 
left join sales as s 
on emp.employee_id = s.sales_person_id 
inner join products as p 
on s.product_id = p.product_id
group by seller, extract('isodow'   from sale_date), to_char(s.sale_date, 'day')
order by extract('isodow'  from sale_date), seller" (seller,day_of_week,income) VALUES
	 ('CherylCarson','wednesday',66729907),
	 ('DeanStraight','wednesday',168092852),
	 ('DirkStringer','wednesday',642376642),
	 ('HeatherMcBadden','wednesday',249479672),
	 ('Innesdel Castillo','wednesday',245730068),
	 ('JohnsonWhite','wednesday',89036569),
	 ('LiviaKarsen','wednesday',156662691),
	 ('MarjorieGreen','wednesday',94949352),
	 ('MeanderSmith','wednesday',49655899),
	 ('MichaelO''Leary','wednesday',134525041);
INSERT INTO "select concat(emp.first_name, emp.last_name) as seller,
	to_char(s.sale_date, 'day') as day_of_week,
	round(sum(s.quantity*p.price), 0) as income
from employees as emp 
left join sales as s 
on emp.employee_id = s.sales_person_id 
inner join products as p 
on s.product_id = p.product_id
group by seller, extract('isodow'   from sale_date), to_char(s.sale_date, 'day')
order by extract('isodow'  from sale_date), seller" (seller,day_of_week,income) VALUES
	 ('MichelDeFrance','wednesday',439203901),
	 ('MorningstarGreene','wednesday',64838804),
	 ('ReginaldBlotchet-Halls','wednesday',80548671),
	 ('SherylHunter','wednesday',140290965),
	 ('StearnsMacFeather','wednesday',24953855),
	 ('SylviaPanteley','wednesday',85876351),
	 ('AbrahamBennet','thursday ',226133921),
	 ('AlbertRinger','thursday ',405676715),
	 ('AnnDull','thursday ',36627442),
	 ('AnneRinger','thursday ',55678731);
INSERT INTO "select concat(emp.first_name, emp.last_name) as seller,
	to_char(s.sale_date, 'day') as day_of_week,
	round(sum(s.quantity*p.price), 0) as income
from employees as emp 
left join sales as s 
on emp.employee_id = s.sales_person_id 
inner join products as p 
on s.product_id = p.product_id
group by seller, extract('isodow'   from sale_date), to_char(s.sale_date, 'day')
order by extract('isodow'  from sale_date), seller" (seller,day_of_week,income) VALUES
	 ('BurtGringlesby','thursday ',103250742),
	 ('CharleneLocksley','thursday ',102081558),
	 ('CherylCarson','thursday ',70730736),
	 ('DeanStraight','thursday ',182913508),
	 ('DirkStringer','thursday ',693463721),
	 ('HeatherMcBadden','thursday ',289587876),
	 ('Innesdel Castillo','thursday ',247744631),
	 ('JohnsonWhite','thursday ',91715665),
	 ('LiviaKarsen','thursday ',168820566),
	 ('MarjorieGreen','thursday ',90204716);
INSERT INTO "select concat(emp.first_name, emp.last_name) as seller,
	to_char(s.sale_date, 'day') as day_of_week,
	round(sum(s.quantity*p.price), 0) as income
from employees as emp 
left join sales as s 
on emp.employee_id = s.sales_person_id 
inner join products as p 
on s.product_id = p.product_id
group by seller, extract('isodow'   from sale_date), to_char(s.sale_date, 'day')
order by extract('isodow'  from sale_date), seller" (seller,day_of_week,income) VALUES
	 ('MeanderSmith','thursday ',56688841),
	 ('MichaelO''Leary','thursday ',130193803),
	 ('MichelDeFrance','thursday ',481154817),
	 ('MorningstarGreene','thursday ',61407062),
	 ('ReginaldBlotchet-Halls','thursday ',89971578),
	 ('SherylHunter','thursday ',148434253),
	 ('StearnsMacFeather','thursday ',22585497),
	 ('SylviaPanteley','thursday ',91590683),
	 ('AbrahamBennet','friday   ',233935361),
	 ('AlbertRinger','friday   ',357492149);
INSERT INTO "select concat(emp.first_name, emp.last_name) as seller,
	to_char(s.sale_date, 'day') as day_of_week,
	round(sum(s.quantity*p.price), 0) as income
from employees as emp 
left join sales as s 
on emp.employee_id = s.sales_person_id 
inner join products as p 
on s.product_id = p.product_id
group by seller, extract('isodow'   from sale_date), to_char(s.sale_date, 'day')
order by extract('isodow'  from sale_date), seller" (seller,day_of_week,income) VALUES
	 ('AnnDull','friday   ',37433122),
	 ('AnneRinger','friday   ',51753352),
	 ('BurtGringlesby','friday   ',109360163),
	 ('CharleneLocksley','friday   ',97761375),
	 ('CherylCarson','friday   ',80473505),
	 ('DeanStraight','friday   ',176048825),
	 ('DirkStringer','friday   ',672023524),
	 ('HeatherMcBadden','friday   ',245868794),
	 ('Innesdel Castillo','friday   ',231816498),
	 ('JohnsonWhite','friday   ',91757930);
INSERT INTO "select concat(emp.first_name, emp.last_name) as seller,
	to_char(s.sale_date, 'day') as day_of_week,
	round(sum(s.quantity*p.price), 0) as income
from employees as emp 
left join sales as s 
on emp.employee_id = s.sales_person_id 
inner join products as p 
on s.product_id = p.product_id
group by seller, extract('isodow'   from sale_date), to_char(s.sale_date, 'day')
order by extract('isodow'  from sale_date), seller" (seller,day_of_week,income) VALUES
	 ('LiviaKarsen','friday   ',172939429),
	 ('MarjorieGreen','friday   ',99954937),
	 ('MeanderSmith','friday   ',53551958),
	 ('MichaelO''Leary','friday   ',142326764),
	 ('MichelDeFrance','friday   ',473980679),
	 ('MorningstarGreene','friday   ',62929145),
	 ('ReginaldBlotchet-Halls','friday   ',96796982),
	 ('SherylHunter','friday   ',158669557),
	 ('StearnsMacFeather','friday   ',28022436),
	 ('SylviaPanteley','friday   ',91390801);
INSERT INTO "select concat(emp.first_name, emp.last_name) as seller,
	to_char(s.sale_date, 'day') as day_of_week,
	round(sum(s.quantity*p.price), 0) as income
from employees as emp 
left join sales as s 
on emp.employee_id = s.sales_person_id 
inner join products as p 
on s.product_id = p.product_id
group by seller, extract('isodow'   from sale_date), to_char(s.sale_date, 'day')
order by extract('isodow'  from sale_date), seller" (seller,day_of_week,income) VALUES
	 ('AbrahamBennet','saturday ',219357051),
	 ('AlbertRinger','saturday ',359055422),
	 ('AnnDull','saturday ',37658782),
	 ('AnneRinger','saturday ',48579238),
	 ('BurtGringlesby','saturday ',108212069),
	 ('CharleneLocksley','saturday ',100507642),
	 ('CherylCarson','saturday ',69224918),
	 ('DeanStraight','saturday ',176094744),
	 ('DirkStringer','saturday ',724561952),
	 ('HeatherMcBadden','saturday ',260891531);
INSERT INTO "select concat(emp.first_name, emp.last_name) as seller,
	to_char(s.sale_date, 'day') as day_of_week,
	round(sum(s.quantity*p.price), 0) as income
from employees as emp 
left join sales as s 
on emp.employee_id = s.sales_person_id 
inner join products as p 
on s.product_id = p.product_id
group by seller, extract('isodow'   from sale_date), to_char(s.sale_date, 'day')
order by extract('isodow'  from sale_date), seller" (seller,day_of_week,income) VALUES
	 ('Innesdel Castillo','saturday ',245765313),
	 ('JohnsonWhite','saturday ',91955960),
	 ('LiviaKarsen','saturday ',142421335),
	 ('MarjorieGreen','saturday ',95303143),
	 ('MeanderSmith','saturday ',53094398),
	 ('MichaelO''Leary','saturday ',131118669),
	 ('MichelDeFrance','saturday ',480574641),
	 ('MorningstarGreene','saturday ',64598715),
	 ('ReginaldBlotchet-Halls','saturday ',92451664),
	 ('SherylHunter','saturday ',143802265);
INSERT INTO "select concat(emp.first_name, emp.last_name) as seller,
	to_char(s.sale_date, 'day') as day_of_week,
	round(sum(s.quantity*p.price), 0) as income
from employees as emp 
left join sales as s 
on emp.employee_id = s.sales_person_id 
inner join products as p 
on s.product_id = p.product_id
group by seller, extract('isodow'   from sale_date), to_char(s.sale_date, 'day')
order by extract('isodow'  from sale_date), seller" (seller,day_of_week,income) VALUES
	 ('StearnsMacFeather','saturday ',27623848),
	 ('SylviaPanteley','saturday ',87097890),
	 ('AbrahamBennet','sunday   ',232328748),
	 ('AlbertRinger','sunday   ',362985487),
	 ('AnnDull','sunday   ',34138288),
	 ('AnneRinger','sunday   ',49050829),
	 ('BurtGringlesby','sunday   ',112782281),
	 ('CharleneLocksley','sunday   ',93745117),
	 ('CherylCarson','sunday   ',69553596),
	 ('DeanStraight','sunday   ',176873006);
INSERT INTO "select concat(emp.first_name, emp.last_name) as seller,
	to_char(s.sale_date, 'day') as day_of_week,
	round(sum(s.quantity*p.price), 0) as income
from employees as emp 
left join sales as s 
on emp.employee_id = s.sales_person_id 
inner join products as p 
on s.product_id = p.product_id
group by seller, extract('isodow'   from sale_date), to_char(s.sale_date, 'day')
order by extract('isodow'  from sale_date), seller" (seller,day_of_week,income) VALUES
	 ('DirkStringer','sunday   ',698820601),
	 ('HeatherMcBadden','sunday   ',266458385),
	 ('Innesdel Castillo','sunday   ',244679492),
	 ('JohnsonWhite','sunday   ',88933984),
	 ('LiviaKarsen','sunday   ',137975385),
	 ('MarjorieGreen','sunday   ',104815534),
	 ('MeanderSmith','sunday   ',56678280),
	 ('MichaelO''Leary','sunday   ',125981635),
	 ('MichelDeFrance','sunday   ',438321489),
	 ('MorningstarGreene','sunday   ',68473054);
INSERT INTO "select concat(emp.first_name, emp.last_name) as seller,
	to_char(s.sale_date, 'day') as day_of_week,
	round(sum(s.quantity*p.price), 0) as income
from employees as emp 
left join sales as s 
on emp.employee_id = s.sales_person_id 
inner join products as p 
on s.product_id = p.product_id
group by seller, extract('isodow'   from sale_date), to_char(s.sale_date, 'day')
order by extract('isodow'  from sale_date), seller" (seller,day_of_week,income) VALUES
	 ('ReginaldBlotchet-Halls','sunday   ',80496473),
	 ('SherylHunter','sunday   ',148514539),
	 ('StearnsMacFeather','sunday   ',27431435),
	 ('SylviaPanteley','sunday   ',95337213);
