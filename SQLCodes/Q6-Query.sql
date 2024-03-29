/*6. Generate a report which contains the top 5 customers who received an
average high pre_invoice_discount_pct for the fiscal year 2021 and in the Indian market. 
The final output contains these fields,
customer_code, customer, average_discount_percentage */

with T1 as (
select customer_code, customer
from dim_customer
where market = 'India'),
T2 as (
select customer_code, avg(pre_invoice_discount_pct) as average_discount_percentage
from fact_pre_invoice_deductions
where fiscal_year = 2021
group by 1
)

select T2.customer_code, T1.customer, Round(T2.average_discount_percentage,4)
from T1
join T2 on T1.customer_code = T2.customer_code
order by T2.average_discount_percentage desc
limit 5;

