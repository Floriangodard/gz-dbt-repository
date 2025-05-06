select*,
    purchase_price * quantity as purchase_cost,
    revenue - purchase_price * quantity as margin
from {{ ref("stg_gz_raw_data__raw_gz_sales") }} as sales
left join
    {{ ref("stg_gz_raw_data__raw_gz_product") }} as product
    on sales.product_id = product.products_id
