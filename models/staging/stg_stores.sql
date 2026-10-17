select
    cast(store_id as bigint) as store_id,
    trim(store_name) as store_name,
    trim(city) as city,
    trim(region) as region,
    trim(country) as country
from {{ source('bronze', 'stores_raw') }}