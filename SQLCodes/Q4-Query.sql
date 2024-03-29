/* 4. Follow-up: Which segment had the most increase in unique products in 2021 vs 2020? 
The final output contains these fields,
segment
product_count_2020
product_count_2021
difference */

with cte1 as (select count(distinct(fact_sales_monthly.product_code)) as product_count_2020, dim_product.segment as segment
from dim_product
inner join fact_sales_monthly on dim_product.product_code = fact_sales_monthly.product_code
where fiscal_year = 2020
group by 2, fiscal_year),

cte2 as (select count(distinct(fact_sales_monthly.product_code)) as product_count_2021, dim_product.segment as segment
from dim_product
inner join fact_sales_monthly on dim_product.product_code = fact_sales_monthly.product_code
where fiscal_year = 2021
group by 2, fiscal_year)

select cte1.segment as segment, product_count_2021, product_count_2020, (product_count_2021-product_count_2020) as difference
from cte2, cte1
where cte1.segment = cte2.segment;


