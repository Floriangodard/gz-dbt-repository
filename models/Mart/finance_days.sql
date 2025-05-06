select date_date, count(orders_id) as Total_number_transactions
, sum(revenue) as revenue
, sum(revenue)/count(orders_id) as Average_Basket, sum(operational_margin) as operational_margin , sum(purchase_cost) as Total_purchase_cost
, sum(shipping_fee) as Total_shipping_fees, sum(logcost) as Total_log_costs, sum(quantity) as Total_quantity_products_sold
from {{ ref('int_orders_operational') }}
order by date_date