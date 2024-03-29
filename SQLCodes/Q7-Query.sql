use gdb023;


/*7. Get the complete report of the Gross sales amount for the customer “Atliq Exclusive” for each month . This analysis helps to get an idea of low and
high-performing months and take strategic decisions.
The final report contains these columns:
Month, Year, Gross sales Amount */

select month(date) as month, year(date) as year, round(sum(fact_sales_monthly.sold_quantity*fact_gross_price.gross_price),2) as gross_sales_amount
from dim_customer
join fact_sales_monthly on dim_customer.customer_code = fact_sales_monthly.customer_code
join fact_gross_price on fact_sales_monthly.product_code = fact_gross_price.product_code
where customer = 'Atliq exclusive'
group by 1,2
order by 2,1 asc;
