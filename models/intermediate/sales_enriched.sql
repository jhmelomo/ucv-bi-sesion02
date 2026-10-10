select
    s.sale_id,
    s.sale_date,
    s.product_id,
    p.product_name,
    p.category,
    s.quantity,
    s.unit_price,
    s.sales_amount
from {{ ref('stg_sales') }} s
left join {{ ref('stg_products') }} p
    on s.product_id = p.product_id