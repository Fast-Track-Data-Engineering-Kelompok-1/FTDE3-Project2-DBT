-- fact_payment.sql
WITH raw_data AS (
    SELECT
        payment_id,
        customer_id,
        staff_id,
        rental_id,
        amount,
        payment_date
    FROM {{ ref('raw_payment') }}
)

SELECT
    payment_id,
    customer_id,
    staff_id,
    rental_id,
    amount,
    payment_date
FROM raw_data
