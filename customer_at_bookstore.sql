create database bookstoreinventory;
use bookstoreinventory;

-- create table genre
CREATE TABLE Genres (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(100)
);

-- create table authors
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(100),
    country VARCHAR(100)
);

-- create table books
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    genre_id INT,
    author_id INT,
    price DECIMAL(10, 2),
    stock INT,
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- create table customers
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    age INT,
    city VARCHAR(100)
);


-- create table orders
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);


-- create table order_details
CREATE TABLE Order_Details (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

show tables;

-- data dataset to the genre table
INSERT INTO Genres (genre_name) VALUES
('Fiction'),
('Non-Fiction'),
('Mystery'),
('Science Fiction'),
('Biography'),
('Fantasy'),
('Historical'),
('Romance'),
('Self-Help'),
('Thriller'),
('Horror'),
('Adventure'),
('Poetry'),
('Drama'),
('Business'),
('Health'),
('Science'),
('Religion'),
('Travel'),
('Education');

select * from genres;

-- add dataset to authors;
INSERT INTO Authors (author_name, country) VALUES
('Chinua Achebe', 'Nigeria'),
('J.K. Rowling', 'UK'),
('George Orwell', 'UK'),
('Stephen King', 'USA'),
('Wole Soyinka', 'Nigeria'),
('Margaret Atwood', 'Canada'),
('Dan Brown', 'USA'),
('Chimamanda Ngozi Adichie', 'Nigeria'),
('Yuval Noah Harari', 'Israel'),
('Agatha Christie', 'UK'),
('Haruki Murakami', 'Japan'),
('Paulo Coelho', 'Brazil'),
('James Clear', 'USA'),
('Robin Sharma', 'Canada'),
('Michelle Obama', 'USA'),
('Barack Obama', 'USA'),
('Jane Austen', 'UK'),
('C.S. Lewis', 'UK'),
('Franz Kafka', 'Austria'),
('Maya Angelou', 'USA');

SELECT * from authors;

-- add dataset to the book table
INSERT INTO Books (title, genre_id, author_id, price, stock) VALUES
('Things Fall Apart', 1, 1, 12.99, 50),
('Harry Potter and the Philosopher\'s Stone', 6, 2, 20.00, 40),
('1984', 4, 3, 15.50, 30),
('The Shining', 10, 4, 18.75, 25),
('Death and the King’s Horseman', 14, 5, 13.20, 20),
('The Handmaid\'s Tale', 6, 6, 17.00, 18),
('The Da Vinci Code', 10, 7, 19.99, 22),
('Half of a Yellow Sun', 7, 8, 14.50, 27),
('Sapiens', 2, 9, 21.00, 30),
('Murder on the Orient Express', 3, 10, 16.75, 26),
('Kafka on the Shore', 4, 11, 17.60, 15),
('The Alchemist', 6, 12, 13.90, 34),
('Atomic Habits', 9, 13, 18.00, 50),
('The Monk Who Sold His Ferrari', 9, 14, 14.00, 28),
('Becoming', 5, 15, 22.50, 32),
('A Promised Land', 5, 16, 24.00, 35),
('Pride and Prejudice', 8, 17, 12.30, 16),
('The Chronicles of Narnia', 6, 18, 20.20, 30),
('The Metamorphosis', 13, 19, 10.99, 14),
('I Know Why the Caged Bird Sings', 13, 20, 11.45, 20);

select b.title, a.author_name
from books b join authors a
on a.author_id = b.author_id
where a.author_id = 3;

-- add data into the customer table
INSERT INTO Customers (name, email, age, city) VALUES
('John Doe', 'john@example.com', 34, 'Lagos'),
('Jane Smith', 'jane@example.com', 28, 'Abuja'),
('Michael Johnson', 'michaelj@example.com', 45, 'Port Harcourt'),
('Emily Davis', 'emilyd@example.com', 31, 'Kano'),
('David Wilson', 'davidw@example.com', 39, 'Enugu'),
('Grace Lee', 'grace@example.com', 26, 'Ibadan'),
('Samuel Green', 'samg@example.com', 50, 'Lagos'),
('Olivia Brown', 'oliviab@example.com', 23, 'Benin'),
('Daniel Martin', 'danielm@example.com', 29, 'Jos'),
('Sophia Walker', 'sophiaw@example.com', 33, 'Owerri'),
('Peter White', 'peterw@example.com', 41, 'Ilorin'),
('Linda Clark', 'lindac@example.com', 36, 'Abeokuta'),
('James Hall', 'jamesh@example.com', 27, 'Uyo'),
('Chidera Okafor', 'chiderao@example.com', 24, 'Onitsha'),
('Amaka Nwosu', 'amakan@example.com', 30, 'Warri'),
('Tunde Bakare', 'tundeb@example.com', 38, 'Oshogbo'),
('Fatima Bello', 'fatimab@example.com', 35, 'Sokoto'),
('Josephine Obi', 'josephineo@example.com', 32, 'Calabar'),
('Ifeanyi Uche', 'ifeanyiu@example.com', 29, 'Awka'),
('Blessing Edet', 'blessinge@example.com', 22, 'Makurdi');

select * from customers;

-- insert data into the orders table
INSERT INTO Orders (customer_id, order_date) VALUES
(1, '2024-01-05'),
(2, '2024-01-08'),
(3, '2024-01-10'),
(4, '2024-01-15'),
(5, '2024-01-20'),
(6, '2024-01-21'),
(7, '2024-01-25'),
(8, '2024-02-01'),
(9, '2024-02-05'),
(10, '2024-02-08'),
(11, '2024-02-10'),
(12, '2024-02-12'),
(13, '2024-02-15'),
(14, '2024-02-18'),
(15, '2024-02-22'),
(16, '2024-03-01'),
(17, '2024-03-05'),
(18, '2024-03-08'),
(19, '2024-03-10'),
(20, '2024-03-12');

select * from orders;

-- insert data into the order detail table
INSERT INTO Order_Details (order_id, book_id, quantity) VALUES
(1, 1, 2),
(1, 3, 1),
(2, 2, 1),
(3, 4, 2),
(4, 5, 1),
(5, 6, 1),
(6, 7, 2),
(7, 8, 1),
(8, 9, 3),
(9, 10, 1),
(10, 11, 1),
(11, 12, 2),
(12, 13, 1),
(13, 14, 1),
(14, 15, 1),
(15, 16, 1),
(16, 17, 2),
(17, 18, 1),
(18, 19, 1),
(19, 20, 1);

select * from order_details;

-- 1 List all books
select * from books;

-- 2 show all customers from lagos
select * from customers where city = 'Lagos';

-- 3 list all books that are out of stock
SELECT * from books where stock = 0;

-- 4 get customers who are younger than 30
select * from customers where age < 30;

-- Join queries

-- 5 list books with their genre and author name
select b.title, g.genre_name, a.author_name
from books b
join genres g on b.genre_id = g.genre_id
join authors a 
on a.author_id = b.author_id;

-- 6 list order with customer name and other date
select o.order_id, c.name, o.order_date
from orders o join customers c 
on o.customer_id = c.customer_id;

-- 7 list order details with book title and quantity
select od.order_id, b.title, od.quantity
from order_details od join books b 
on od.book_id = b.book_id;

-- 8 total number of books in stock
select sum(stock) as total_stock from books;

-- 9 number of customers in each city
select city,  count(*) as total_customers
from customers GROUP BY city;

-- 10 select best selling books (by quantty sold)
SELECT b.title, sum(od.quantity) as total_quantity
from order_details od join books b 
on od.book_id = b.book_id
GROUP BY  b.title
order by total_quantity desc;

-- 10 select best selling book by author
select  a.author_name, sum(od.quantity) as total_quantity_sold
from order_details od join books b 
on od.book_id = b.book_id
join authors a on a.author_id = b.author_id
GROUP BY b.title, a.author_name
order by total_quantity_sold desc limit 5;

-- 11 select customers who placed more than one order
select c.name from customers c 
where c.customer_id in 
(select customer_id from orders group by customer_id
having count(*) > 1
);

/*
SELECT customer_id, COUNT(*) as order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 1;
*/
INSERT INTO Orders (customer_id, order_date)
VALUES (2, '2024-04-02'), (3, '2024-04-10'),
(3, '2024-05-21'), (4, '2024-05-19');

-- 12 select top 3 authors with the most books sold
select a.author_name, sum(od.quantity) as total_sold
from order_details od join books b 
on od.book_id = b.book_id
join authors a on 
a.author_id = b.author_id
group by a.author_name, b.title
order by total_sold desc
limit 4 ;

-- 13 calculate the average order value for each customer
select c.name, round(avg(od.quantity * b.price), 2) as avg_order_value
from customers c join orders o on c.customer_id = o.customer_id
join order_details od on o.order_id = od.order_id
join books b on b.book_id = od.book_id
group by c.name ORDER BY avg_order_value desc;

-- 14 idenity customers who bought more than 3 books
select c.name, od.quantity
from customers c join
orders o on c.customer_id = o.customer_id
join order_details od on
od.order_id = o.order_id
where od.quantity > 1;

-- 15 show all books that have not been bought
select b.book_id, b.title from books b 
join order_details od
on b.book_id = od.book_id 
WHERE od.quantity < 1;

-- 16 Calculate monthly totals sales  for the first quarter of 2024
select date_format(o.order_date, '%Y-%m') as sales_month,
round(avg(od.quantity * b.price),2) as total_sales
from orders o join order_details od on o.order_id = od.order_id
join books b on od.book_id = b.book_id
where o.order_date BETWEEN '2024-01-01' and '2024-03-31'
group by sales_month
order by sales_month desc;

-- sales trend over time
SELECT 
  DATE_FORMAT(o.order_date, '%Y-%m') AS sale_month,
  ROUND(SUM(od.quantity * b.price), 2) AS total_sales
FROM 
  orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN books b ON od.book_id = b.book_id
GROUP BY 
  sale_month
ORDER BY 
  sale_month;


/*
Actionable insight that can be derive from the data
*/

-- 1. select the top 5 best selling books
select  b.title, sum(b.price * od.quantity) as amount_sold
from books b join order_details od 
on b.book_id = od.book_id
group by b.title, b.book_id
order by amount_sold  desc limit 5; 

-- 2. select the most valuable customers

 SELECT c.name as customer_name,
 round(sum(b.price * od.quantity), 2) as total_spent
 from customers c 
 join orders o on c.customer_id = o.customer_id
 join order_details od
 on od.order_detail_id = od.order_id
 join books b on od.book_id = b.book_id
 group by c.customer_id, c.name
 order by total_spent desc
 limit 1;
 
 -- 3. select genre with the highest sales
 select  g.genre_name, round(sum(b.price * od.quantity)) as total_sales
 from order_details od join books b on
 od.order_detail_id = od.book_id
 join genres g on g.genre_id = b.genre_id
 join orders o on o.order_id = od.order_id
 group by g.genre_name
 order by total_sales
 limit 5;
 
 -- 4. customer buying behavior by city/age
 -- a total Spending by city
 select c.city,
 round(sum(od.quantity * b.price), 2) as total_spent
 from customers c join
 orders o on c.customer_id = o.customer_id
 join order_details od
 on od.order_id = o.order_id
 join books b on od.book_id = b.book_id
 group by c.city
 order by total_spent desc;
 
 -- 2. Average Spending by City
 select c.city,
 round(avg(b.price * od.quantity), 2) as avg_spent_per_item
 from customers c join
 orders o on c.customer_id = o.customer_id
 join order_details od on
 od.order_id = o.order_id
 join books b on 
 b.book_id = od.book_id
 group by c.city
 order by avg_spent_per_item desc;
 
 -- 3. Buying behavior by age group
 select 
 case
 when c.age between 18 and 25 then '18-25'
 when c.age between 26 and 35 then '26-35'
 when c.age between 36 and 45 then '36-45'
 else '46+'
 end as age_group,
 round(sum(od.quantity * b.price), 2) as total_spent
 from customers c
 join orders o on c.customer_id = o.customer_id
 join order_details od  on od.order_id = o.order_id
 join books b on od.book_id = b.book_id
 GROUP BY age_group
 order by total_spent desc;
 
 -- 4 select age group and their city
 SELECT c.city,
 case
 when c.age between 18 and 25 then '18-25'
 when c.age between 26 and 35 then '26-35'
 WHEN c.age BETWEEN 36 and 45 then '36-45'
 else '46+'
 end as Age_group,
 round(sum(od.quantity * b.price), 2) as total_spent
 from customers c join orders o on
 c.customer_id = o.customer_id
 join order_details od on 
 od.order_id = o.order_id
 join books b on
 b.book_id = od.book_id
 GROUP BY c.city, Age_group
 order by c.city, total_spent desc;
 
 -- select books with low-stocks that are selling fast
 select b.title, b.stock,
 sum(od.quantity) as total_sold
 from books b join order_details od
 on od.book_id = b.book_id
 group by b.book_id, b.title, b.stock
 having b.stock > 20 and sum(od.quantity) > 15
 order by total_sold desc;