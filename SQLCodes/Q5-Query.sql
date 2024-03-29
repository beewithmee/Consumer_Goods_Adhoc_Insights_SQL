/* 5. Get the products that have the highest and lowest manufacturing costs.
The final output should contain these fields,
product_code, product, manufacturing_cost */

select dim_product.product_code, dim_product.product, fact_manufacturing_cost.manufacturing_cost
from dim_product
join fact_manufacturing_cost
on dim_product.product_code = fact_manufacturing_cost.product_code
where manufacturing_cost IN ((select min(manufacturing_cost) from fact_manufacturing_cost)
union
(select max(manufacturing_cost) from fact_manufacturing_cost))
order by fact_manufacturing_cost.manufacturing_cost desc;
