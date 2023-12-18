
create database employee_data; -- Creating database
use employee_data;             -- Activating database

create table employee_data(    -- Creating table
id int,                        -- Defining all the data_types
fname varchar(20),
contact bigint,
DOB date,
Designation varchar(20),
DOJ timestamp,
Salary decimal (15,2));

use classicmodels;             -- Activating the database where the data needs to be fetched
select *                       -- Fetching All (*) the tables from 'customers' table
from customers;

select customerNumber, customerName, country  -- Fetching customerNumber,customerName and country from 'customers' table
from customers;

-- Where clause
 -- Fetching customer data where country=USA 
select customerNumber, customerName         
from customers
where country = "USA";                       

-- Fetching customer data where the state= CA
select customerNumber, customerName
from customers
where state = "CA";                        

 -- Fetching customer data where the creditlimit>= 50000
select customerNumber, customerName         
from customers
where creditlimit >= 50000;   

 -- Fetching customer data where the country=USA AND creditlimit>= 50000
select customerNumber, customerName         
from customers
where country= "USA" AND creditlimit >= 50000;        

-- Fetching customer data where the country=USA OR Spain 
select customerNumber, customerName, country         
from customers
where country= "USA" OR country = "Spain";           

-- Fetch Customer data between 50,000 and 100000,
select customerNumber, customerName, country         
from customers
where credlimit >= 50000 AND credlimit >= 100000;

-- OR one can use 'between' operator
select customerNumber, customerName, country         
from customers
where credlimit between 50000 AND 100000; 

-- Limit (Used for fetch first 10 rows)
select customerNumber, customerName, country, credlimit         
from customers
where credlimit between 50000 AND 100000
limit 10;

-- Sort Customer data in ascending way (order by)
select customerNumber, customerName, country, creditlimit         
from customers
where creditlimit>=50000 
order by creditlimit; 

-- Sort Customer data in descending way
select customerNumber, customerName, country, creditlimit         
from customers
where creditlimit>=50000 
order by creditlimit desc; 

-- Order of exceution -- Where> order by > limit

-- Top 3 customers with creditlimit more than 50000
select customerNumber, customerName, creditlimit         
from customers
where creditlimit>=50000 
order by creditlimit desc
limit 3; 

-- Customer with second highest credit limit for all credit limit >= 50000
select customerNumber, customerName, creditlimit         
from customers
where creditlimit>=50000 
order by creditlimit desc
limit 1,1;

-- Bottom 3 customers with credlimit >= 50000
select customerNumber, customerName, creditlimit         
from customers
where creditlimit>=50000 
order by creditlimit 
limit 3;

-- Bottom 3 cutomers with credit limit not equal to zero
select customerNumber, customerName, creditlimit         
from customers
where creditlimit<>0 
order by creditlimit 
limit 3;

-- IN operator (fetches the members in the list)
select customerNumber, customerName, country         
from customers
where country IN ("USA", "Spain", "France");

-- NOT IN operator (fetches the members not in the list)
select customerNumber, customerName, country         
from customers
where country NOT IN ("USA", "Spain", "France");

-- Find top 5 customers from Country USA, Spain and France with creditlimit in range 1 Lakh to 2 Lakh
select customerNumber, customerName, creditlimit         
from customers
where country IN ("USA", "Spain", "France") AND creditlimit between 100000 and 200000
order by creditlimit desc
limit 5; 

-- Distinct Clause (Fetches unique records always after Select statement)
select  distinct country
from customers

-- Distinct Clause with Count
select count(distinct country) as country_count
from customers;

-- Alias 'as' (naming a column)
select count(distinct country) as country_count
from customers;

-- Country starting with A (Stringname% : starts with)
select distinct country
from customers
where country like "A%";

-- Sorted list of Country starting with A or B or C (Stringname% : starts with, %Stringname: ends with & %stringname%: contains)
select   distinct country
from customers
where country like"A%" or country like "B%" or country like"C%"
order by country;

-- Sorted list of all states whose name has exactly 2 characters in it "_"
select   distinct state 
from customers
where state like "__"   -- ( 2 _ for 2 characters)
order by state;