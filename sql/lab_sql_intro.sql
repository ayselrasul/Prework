use sakila;

#Get all the data from tables actor, film and customer.
#Get film titles.
#Get unique list of film languages under the alias language. Note that we are not asking you to obtain the 
#language per each film, but this is a good time to think about how you might get that information in the future.
#Find out how many stores does the company have?
#Find out how many employees staff does the company have?
#Return a list of employee first names only?


select * from actor;
select * from film;
select * from customer;

select distinct title from film;

select name  as language from language;

select count(distinct store_id)from store;

select count(DISTINCT staff_id ) from staff;

select distinct first_name from staff;
