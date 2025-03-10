/*
 * Select the titles of all films that the customer with customer_id=1 has rented more than 1 time.
 *
 * HINT:
 * It's possible to solve this problem both with and without subqueries.
 */

SELECT f.title
FROM film f
JOIN inventory USING (film_id)
JOIN rental USING (inventory_id)
WHERE rental.customer_id = 1
GROUP BY f.title
HAVING count(f.title) > 1;

