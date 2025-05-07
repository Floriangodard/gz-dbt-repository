SELECT
a.date_date,
sum(operational_margin-ads_cost) as ads_margin,
sum(average_basket) as average_basket,
sum(operational_margin) as operational_margin,
sum(ads_cost) as ads_cost,
sum(ads_impression) as ads_impression,
sum ( ads_click) as ads_click,
sum(quantity) as quantity,
sum(revenue) as revenue,
sum (purchase_cost) as purchase_cost,
sum(margin) as margin,
sum(shipping_fee) as shipping_fee,
sum(logcost) as logcost,
sum(ship_cost) as ship_cost,
from {{ ref('finance_days') }} as a
left join {{ ref('int_campaigns_day') }} as b
on a.date_date = b.date_date
group by a.date_date
order by a.date_date

