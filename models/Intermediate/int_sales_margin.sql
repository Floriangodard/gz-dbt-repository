select*
 from {{ ref('stg_gz_raw_data__raw_gz_sales') }} 
left join {{ ref('stg_gz_raw_data__raw_gz_product') }} 
on gsa.pdt_id = gpr.product_id 