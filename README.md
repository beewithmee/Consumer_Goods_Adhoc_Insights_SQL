# Consumer_Goods_Adhoc_Insights_SQL

Aim: Analyze the given database and provide insights to stakeholders.

Hello everyone, "Ever juggled with more than a million records? I have! Let's chat about the adventures in handling a colossal sea of data".

Problem Statement:

AtliQ is a fast-growing hardware company that sells various products to customers in many countries through various channels, including retail, direct sales, and distributor networks, both online and in brick-and-mortar stores. To support its growth and make data-driven decisions, AtliQ needs a data analytics team.

𝐓ools 𝐔𝐬𝐞𝐝 -

MySQL Workbench (For getting insights using SQL)

Knowledge gained in:

1. Database Exploration with MySQL Workbench: Loading databases into MySQL Workbench, Navigating and exploring tables within the database.

2. Data Management Concepts: Understanding ETL (Extract, Transform, Load) processes, Grasping the distinctions between Data Warehouses, OLAP (Online Analytical Processing), and OLTP (Online Transactional Processing).

3. Database Design Principles: Implementing normalization techniques, Creating fact tables and dimension tables, Constructing star schema and snowflake schema for efficient data organization.

4. Data Integrity and Relationships: Addressing data duplication issues, Ensuring data integrity through primary keys and foreign keys.

5. SQL Querying Expertise: Proficient in basic SQL queries, Mastery of various JOIN types for effective data retrieval.

6. Advanced Query Techniques: Utilizing subqueries and correlated subqueries, Implementing Common Table Expressions (CTEs), Views, and temporary tables for improved query organization.

7. Custom Functions and Stored Procedures: Writing custom functions to enhance data manipulation, Creating and optimizing stored procedures for efficient database operations.

8. Understanding Datatypes: Knowledge of diverse data types and their applications in database design.

9. Window Functions: Expertise in window functions such as OVER, ROW_NUMBER, RANK, DENSE_RANK for advanced data analysis.

10. Database Optimization Techniques: Implementing indexes for faster query performance, Creating triggers and events for automated database responses, Managing user accounts and permissions to ensure secure and controlled access to the database.

10 Ad_Hoc Queries to solve:

#1. Provide the list of markets in which customer "Atliq Exclusive" operates its business in the APAC region.
#2. What is the percentage of unique product increase in 2021 vs. 2020? The final output contains these fields: unique_products_2020, unique_products_2021, percentage_chg.
#3. Provide a report with all the unique product counts for each segment and sort them in descending order of product counts. The final output contains 2 fields: segment,product_count.
#4. Follow-up: Which segment had the most increase in unique products in 2021 vs 2020? The final output contains these fields: segment, product_count_2020, product_count_2021, difference.
#5. Get the products that have the highest and lowest manufacturing costs. The final output should contain these fields: product_code, product, manufacturing_cost.
#6. Generate a report which contains the top 5 customers who received an average high pre_invoice_discount_pct for the fiscal year 2021 and in the Indian market. The final output contains these fields customer_code, customer, average_discount_percentage.
#7. Get the complete report of the Gross sales amount for the customer “Atliq Exclusive” for each month. This analysis helps to get an idea of low and high-performing months and take strategic decisions. The final report contains these columns: Month, Year,Gross sales Amount.
#8. In which quarter of 2020, got the maximum total_sold_quantity? The final output contains these fields sorted by the total_sold_quantity. Quarter, total_sold_quantity.
#9. Which channel helped to bring more gross sales in the fiscal year 2021 and the percentage of contribution? The final output contains these fields: channel, gross_sales_mln, percentage.
#10. Get the Top 3 products in each division that have a high total_sold_quantity in the fiscal_year 2021? The final output contains these fields: division, product_code, product, total_sold_quantity, rank_order.
Insights and Conclusion:

In the project, I delved into 10 Ad-hoc queries, unraveling key details about top products, customers, markets, and crucial metrics like gross price, pre-invoice deductions, manufacturing costs, and sales quantity. “It's all about turning data into actionable insights!"
