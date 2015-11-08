
/*
Is360
Week 10 quiz
Luis Hernandez

Question 1: Create a list of customers whose last names start with an “M” or an “N”
*/

SELECT last_name, first_name
FROM customer
WHERE last_name LIKE 'M%' OR
      last_name LIKE 'N%'
ORDER BY last_name;

/* Question 2: What is the length of the longest film in the database?
Answer: The longest film in the databse has a lenght of 185
*/

SELECT title, length
FROM film
WHERE length = (SELECT MAX(length) FROM film)
ORDER BY title;

/*Question 3: Create a list of category_ids from the table category where the category is either “animation,” “children,” or “family.”
*/

SELECT category_id
FROM category
WHERE name = 'Animation' OR
      name = 'Children' OR
      name = 'Family';
