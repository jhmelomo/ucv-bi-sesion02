select
    row_number() over (order by store_id) as store_key,
    store_id,
    store_name,
    city,
    region,
    country
from {{ ref('stg_stores') }}