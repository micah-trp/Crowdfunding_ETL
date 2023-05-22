--Project 2 SQL 
--crowd funding script

SELECT * FROM campaign
LIMIT 10;
SELECT * FROM category
LIMIT 10;
SELECT * FROM subcategory
LIMIT 10;
SELECT * FROM contacts
LIMIT 10;

--Join top 10 campaign & Contact by amount where successful
--validate the category and subcategory are correct

SELECT 
company_name, currency, pledged, outcome, end_date, 
b.category, c.subcategory,
first_name, last_name, email

FROM  campaign a 
			LEFT JOIN category b on a.category_id = b.category_id
			LEFT JOIN subcategory c on a.subcategory_id = c.subcategory_id
			LEFT JOIN contacts d on a.contact_id = d.contact_id

WHERE outcome IN ('successful')
ORDER BY Currency, pledged DESC