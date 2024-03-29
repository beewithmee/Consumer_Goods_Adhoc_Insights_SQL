/* 10. Get the Top 3 products in each division that have a high total_sold_quantity in the fiscal_year 2021? 
The final output contains these fields,
division, product_code, product, total_sold_quantity, rank_order */

with cte1 as (
select division, dim_product.product_code, product, sum(fact_sales_monthly.sold_quantity) as total_sold_quantity, 
rank() over(partition by division order by sum(sold_quantity) desc) as rank_order
from dim_product
join fact_sales_monthly on dim_product.product_code = fact_sales_monthly.product_code
where fiscal_year=2021
group by 1,2,3
order by 4 desc)

select division, product_code, product, total_sold_quantity, rank_order
from cte1
where rank_order<=3;

