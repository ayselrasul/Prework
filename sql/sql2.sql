use sakila;


#Select all the actors with the first name ‘Scarlett’
select * from actor
where first_name='Scarlett';


#Select all the actors with the last name ‘Johansson’
select * from actor
where  last_name='Johansson';


#How many films (movies) are available for rent?
select count(distinct film_id) from inventory;


#How many films have been rented?
select count(*) from rental;


#What is the shortest and longest rental period?
select max(TIMESTAMPDIFF(HOUR, rental_date, return_date)) as max_period,
	   min(TIMESTAMPDIFF(HOUR, rental_date, return_date)) as min_period
from rental;


#What are the shortest and longest movie duration? Name the values max_duration and min_duration
select max(length) as max_length,min(length) as min_length
from film;


#What's the average movie duration?
select AVG(length) from film;



#What's the average movie duration expressed in format (hours, minutes)?
Select avg(length) div 60 as hours,
	   avg(length) % 60 as minutes
from film;



#How many movies longer than 3 hours?
select title from film
where length>180;



#Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT CONCAT(first_name,'   ',last_name,'-',lower(email)) as hgjh
from customer;


#What's the length of the longest film title?
select title from film
where length=(select max(length)from film);



