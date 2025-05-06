select sm.orders_id, sm.date_date, sales.revenue, sales.quantity, purchase_cost, margin,
from {{ ref('int_sales_margin') }} as sm 
 left join {{ ref('stg_gz_raw_data__raw_gz_sales') }} as sales
on sales.orders_id=sm.orders_id
order by sm.orders_id, sm.date_date, sales.revenue, sales.quantity, purchase_cost, margin