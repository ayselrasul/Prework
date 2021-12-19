-- Get film ratings.
select distinct rating
from sakila.film;

-- Get release years
select distinct release_year
from sakila.film;

-- Get all films with ARMAGEDDON in the title.
select *  from sakila.film
where title like '%ARMAGEDDON%';

-- Get all films with APOLLO in the title.
select *  from sakila.film
where title like '%APOLLO%';

-- Get all films which title ends with APOLLO.
select * from sakila.film
where title like '%APOLLO';

-- Get all films with word DATE in the title.
select * from sakila.film where title like '%DATE%';

-- Get 10 films with the longest title
select title, length(title) from sakila.film
order by length(title) desc
limit 10;

-- Get 10 the longest films
select title, length from sakila.film
order by length desc
limit 10;

-- How many films include Behind the Scenes content?
select special_features from sakila.film
where special_features like '%Behind the Scenes%'; 

-- List films ordered by release year and title in alphabetical order.
select title, release_year from sakila.film
order by release_year, title;
