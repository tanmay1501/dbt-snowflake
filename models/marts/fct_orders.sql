select 
    orders.*,
    order_summary.gross_item_sales_amount,
    order_summary.item_discount_amount
from   
    {{ ref('std_tpch_orders')}} as orders
join
    {{ ref('int_order_items_summary')}} as order_summary
        on orders.order_key = order_summary.order_key
order by order_date