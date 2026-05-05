with orders as (SELECT 
*
FROM {{ ref('stg_jaffle_shop_orders') }} ),

payments as (
    SELECT *
    FROM {{ ref('stg_stripe_payments') }}
)

SELECT 
orders.order_id,
customer_id,
amount
FROM orders
LEFT JOIN payments ON order_id