select distinct
    cast(date_format(sale_date, 'yyyyMMdd') as int) as date_key,
    sale_date as full_date,
    year(sale_date) as year,
    quarter(sale_date) as quarter,
    month(sale_date) as month,
    monthname(sale_date) as month_name,
    day(sale_date) as day
from {{ ref('stg_sales') }}