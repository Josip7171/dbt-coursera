select
    order_id,
    tenant,
    region,
    customer_name as customer_display_name,
    customer_email,
    amount as order_amount
from {{ ref('customer_orders_v') }}