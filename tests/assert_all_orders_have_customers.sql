SELECT 
    o.order_id, 
    o.customer_id
FROM {{ ref('bronze_tpch_orders') }} o
LEFT JOIN {{ ref('bronze_tpch_customers') }} c ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL