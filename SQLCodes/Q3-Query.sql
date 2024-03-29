/*#3. Provide a report with all the unique product counts for each segment and sort them in descending order of product counts. The final output contains 2 fields: 
segment,product_count.*/

select distinct(count(product_code)) as unique_product_count, segment from dim_product
group by 2
order by unique_product_count desc;