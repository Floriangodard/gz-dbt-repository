select ordm.orders_id, ordm.date_date,
margin+shipping_fee-logcost-ship_cost as operational_margin
from {{ ref('int_orders_margin') }} as ordm 
left join {{ ref('stg_gz_raw_data__raw_gz_ship') }} as gzship 
on ordm.orders_id = gzship.orders_id