SELECT * FROM vehicles
 FULL JOIN owners 
 ON vehicles.owner_id = owners.id;

SELECT first_name, last_name, COUNT(owners.id) AS num_of_vehicles
 FROM owners
 JOIN vehicles ON owners.id = vehicles.owner_id
 GROUP BY (first_name, last_name)
 ORDER BY first_name;

SELECT first_name, last_name, ROUND(AVG(price)) AS avg_price, COUNT(owner_id) AS num_of_vehicles
 FROM owners 
 JOIN vehicles ON owners.id = vehicles.owner_id
 GROUP BY (first_name, last_name)
 HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000
 ORDER BY first_name DESC