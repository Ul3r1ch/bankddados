
--seleciona todos os registros da tabela filme
select * from film;

--conta quantos filmes exitem na tabela filme
select count(*) from film;

select * from film f where f.title like 'G%';


select * from film f where f.description like '%a';

select * from film f where f.title like '%j%';


select *from film f where f.film_id =561;


select a.first_name, a.last_name from film f inner join film_actor fa on fa.film_id = f.film_id
inner join actor a on fa.actor_id = a.actor_id where f.film_id =561

