SELECT customer.first_name, customer.last_name, customer.email, customer.address_id
from customer
	JOIN address ON customer.address_id = address.address_id 
	JOIN city ON address.city_id = city.city_id
WHERE city.city_id = 312;

SELECT film.title,film.description, film.release_year, film.rating, film.special_features, category.name
FROM film
	JOIN film_category ON film_category.film_id = film.film_id
	JOIN category ON category.category_id = film_category.category_id
WHERE category.name = "comedy";

SELECT actor.actor_id, actor.first_name, film.title, film.description, film.release_year
FROM film
	JOIN film_actor ON film.film_id = film_actor.film_id
	JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE actor.actor_id = 5;

SELECT customer.first_name,customer.last_name,customer.email,customer.address_id
FROM customer
    JOIN address ON customer.address_id = address.address_id
    JOIN city ON city.city_id = address.city_id
WHERE customer.store_id = 1 AND city.city_id IN(1,42,312,459);

SELECT film.title,film.description,film.release_year,film.rating,film.special_features
FROM film
	JOIN film_actor ON film.film_id = film_actor.film_id
	JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE film.rating = "G" AND actor.actor_id = 15;

SELECT film.film_id,film.title,actor.actor_id,actor.first_name,actor.last_name
FROM film
	JOIN film_actor ON film.film_id = film_actor.film_id
	JOIN actor ON film_actor.actor_id = actor.actor_id 
WHERE film.film_id = 369;

SELECT film.title,film.description,film.release_year,film.rating,film.special_features,category.name,actor.first_name,actor.last_name
FROM film
	JOIN film_category ON film_category.film_id = film.film_id
	JOIN category ON category.category_id = film_category.category_id
	JOIN film_actor ON film.film_id = film_actor.film_id
	JOIN actor ON film_actor.actor_id = actor.actor_id 
WHERE category.name = "action" AND actor.first_name ="sandra" AND actor.last_name="kilmer"
