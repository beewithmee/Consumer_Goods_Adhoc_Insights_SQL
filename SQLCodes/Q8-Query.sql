select case
when month(date) in (9,10,11) then 'Q1'
when month(date) in (12,01,02) then 'Q2'
when month(date) in (03,04,05) then 'Q3'
when month(date) in (06,07,08) then 'Q4'
end as quarters,
sum(sold_quantity) as total_sold_quantity
from fact_sales_monthly
where fiscal_year = 2020
group by 1
order by 2 desc;
