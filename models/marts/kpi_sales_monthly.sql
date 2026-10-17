select
    d.year,
    d.month,
    d.month_name,
    sum(f.sales_amount) as total_sales,
    sum(f.quantity) as units_sold,
    sum(f.sales_amount) / nullif(count(distinct f.sale_id), 0) as average_ticket
from {{ ref('fact_sales') }} f
join {{ ref('dim_date') }} d on f.date_key = d.date_key
group by d.year, d.month, d.month_name