/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */
SELECT film.title, film.film_id, COUNT(film_actor.actor_id) AS actor_count
FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
GROUP by film.title, film.film_id
ORDER BY actor_count ASC, film.title ASC;
