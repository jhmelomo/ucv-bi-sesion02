select
    s.sale_id,
    d.date_key,
    p.product_key,
    c.customer_key,
    st.store_key,
    s.quantity,
    s.unit_price,
    s.sales_amount
from {{ ref('stg_sales') }} s
left join {{ ref('dim_date') }} d on s.sale_date = d.full_date
left join {{ ref('dim_product') }} p on s.product_id = p.product_id
left join {{ ref('dim_customer') }} c on s.customer_id = c.customer_id
left join {{ ref('dim_store') }} st on s.store_id = st.store_id