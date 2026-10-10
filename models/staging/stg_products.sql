select
    cast(product_id as bigint) as product_id,
    trim(product_name) as product_name,
    trim(category) as category
from {{ source('bronze', 'products_raw') }}