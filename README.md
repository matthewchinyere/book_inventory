📘 Bookstore Sales Analysis (MySql and Tableay)


📌Project Overview
This project simulates a retail Bookstore Management System using MySQL for backend data modeling and Tableau for data visualization. The goal is to showcase practical SQL skills including database design, complex queries, and data storytelling through dashboards.

🎯Objectives
* Design a normalized schema for mannaging books, customes, genre,authors, and sales
* Populate table with sample data (20 rows per table)
* Run Queries to extract business insight
* Visualize sales and customer behavior using tableau dashboard

🛠️Tools Use
* MySql - Database design, data insertion, and querying
* Tableau - Data Analytics and data insertion
* MySql Workbench - Query Execution and data import

💃Database Schema
6 Normalizes tables:
* Books
* Authors
* Customers
* Orders
* Genres
* Order_details
Includes entity relationship such as:
* One-to-many (Authors ➡ Books)
* Many-to-Many(Orders ↔ Books via Order_Details)

🔎 Key Queries
* Best-selling books
* Genre with the highest sales
* Average order value per customer
* sales trend over time (monthly)
* customer behavior by age and city

  
📊 Tableau Dashboard
* Monthly Sales trend
* Top 5 best-selling books
* Sales By Age group and city
* Revenue by genre and author

  🧠 Key Insight
  * monthly totals sales  for the first quarter of 2024
  * sales trend over time
  * Best Selling Authors
  * Sales peaked in February 2024
  * Customers age between 26 to 35 contribute 70% of the revenue
