select
    cast(customer_id as bigint) as customer_id,
    trim(customer_name) as customer_name,
    trim(segment) as segment,
    trim(city) as city,
    trim(country) as country
from {{ source('bronze', 'customers_raw') }}