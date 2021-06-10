-- Question 1
-- All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

-- Run Query: Find all the tracks that have a length of 5,000,000 milliseconds or more.

Select count (*)
From 
Tracks
Where
Milliseconds >= 5000000


-- Question 2
-- All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

-- Run Query: Find all the invoices whose total is between $5 and $15 dollars.

Select *
From invoices
Where
Total between 5 and 15


-- Question 3
-- All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

-- Run Query: Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY.

select * 
from
customers
where
state 
in ('RJ', 'DF', 'AB', 'BC', 'CA', 'WA', 'NY')

-- Question 4
-- All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

-- Run Query: Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.

Select *
from
Invoices
where
CustomerId in (56, 58)
and
Total between 1.00 and 5.00


-- Question 5
-- All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

-- Run Query: Find all the tracks whose name starts with 'All'.

select TrackId, Name
from Tracks
where Name like 'All%'


-- Question 6
-- All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

-- Run Query: Find all the customer emails that start with "J" and are from gmail.com.

select Email 
from Customers
where Email like 'j%gmail.com'


-- Question 7
-- All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

-- Run Query: Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.

select InvoiceId, 
BillingCity, 
Total
from invoices
where BillingCity in ('Brasília', 'Edmonton', 'Vancouver')
order by InvoiceId Desc


-- Question 8
-- All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

-- Run Query: Show the number of orders placed by each customer (hint: this is found in the invoices table) and sort the result by the number of orders in descending order.

SELECT CustomerId, COUNT(*) AS Orders
FROM Invoices
GROUP BY CustomerId
ORDER BY Orders DESC


-- Question 9
-- All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

-- Run Query: Find the albums with 12 or more tracks.

SELECT AlbumId, Count(*) AS Ntracks
FROM Tracks
GROUP BY AlbumId
HAVING COUNT (*) >= 12