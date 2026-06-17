SELECT
    order_id,
    net_revenue
FROM {{ ref('gold_orders') }}
WHERE net_revenue < {{ var('min_order_revenue', 100) }}