/*9. Which channel helped to bring more gross sales in the fiscal year 2021 and the percentage of contribution? The final output contains these fields,
channel, gross_sales_mln, percentage */

with cte1 as (
select dim_customer.channel, round(sum((fact_gross_price.gross_price*fact_sales_monthly.sold_quantity)/1000000),2) as gross_sales_mln
from fact_sales_monthly
join dim_customer on fact_sales_monthly.customer_code = dim_customer.customer_code
join fact_gross_price on fact_sales_monthly.product_code = fact_gross_price.product_code
where fact_sales_monthly.fiscal_year = 2021
group by 1
order by gross_sales_mln)

select channel, concat(gross_sales_mln, ' M') as gross_sales_mln, concat(round((gross_sales_mln*100)/sum(gross_sales_mln) over(),2), ' %') as percentage
from (select * from cte1) as A
group by 1
order by percentage desc;

