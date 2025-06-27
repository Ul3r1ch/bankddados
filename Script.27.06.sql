

-- questão 1 
select count(*) from film f 
inner join "language" l 
on f.language_id = l.language_id 
where l."name" = 'português';  

--questão 2 
select count(*) from customer c 
inner join "rental" r on r.customer_id = c.customer_id
inner join inventory i ON i.inventory_id = r.inventory_id 
inner join film f on f.film_id = i.film_id 
where f.film_id = 7;
--corrigido

--questão 3
select count(*) from rental f;

--questão 4 
select f.replacement_cost as "custo de reposição" from film f where f.film_id =600; 

--questão 5
select
	s.first_name,
	s.last_name,
	count(r.rental_id)
from
	staff s
inner join 
    rental r 
on
	s.staff_id = r.staff_id
group by
	s.first_name,
	last_name
order by 
count(r.rental_id)desc
limit 1;


-- questao 6
select a.address, count(*) from staff sta
inner join store sto on sta.store_id= sto.store_id 
inner join address a on 
a.address_id = sto.address_id 
group by a.address_id;

-- questão 7


--questão 8
select count(*) as "quantidade de atores" from film_actor fa 
where fa.actor_id = 1;

--8.a














