-- dim_customer.sql
WITH raw_data AS (
    SELECT
        customer_id,
        store_id,
        first_name,
        last_name,
        email,
        address_id,
        activebool,
        create_date,
        last_update,
        active
    FROM {{ ref('raw_customer') }}
)

SELECT
    customer_id,
    store_id,
    first_name,
    last_name,
    email,
    address_id,
    activebool,
    create_date,
    last_update
FROM raw_data
