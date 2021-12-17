#How many distinct (different) actors' last names are there?
select count(distinct last_name)from sakila.actor;


#In how many different languages where the films originally produced? (Use the column language_id from the film table)
select count(DISTINCT language_id) from sakila.film;


#How many movies were released with "PG-13" rating?
select count(film_id)from sakila.film
where rating IN('PG-13');



#How many rentals were in the last month of activity?
select rental_date from sakila.rental
Order By rental_date DESC
Limit 1;

select count(rental_id) from sakila.rental
where EXTRACT(YEAR from rental_date)= '2006' and EXTRACT(MONTH from rental_date) = '02';



#Get 10 the longest movies from 2006
select film_id,title,length,release_year from sakila.film 
Order by length Desc
Limit 10;


#How many days has been the company operating (check DATEDIFF()function)
select datediff(max(last_update),min(rental_date)) as companys_existing_period from sakila.rental;



#Show rental info with additional columns month and weekday. Get 20
select *, date_format(rental_date, '%M') as month, date_format(rental_date, '%W') as weekday
from sakila.rental
Limit 20; 



#Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week
select *,
Case when date_format(rental_date, '%W') IN ('Saturday','Sunday') then 'weekend'
Else 'weekday'
End as day_type
from rental;















