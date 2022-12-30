{{ config(materialized='table') }}

select
 a.row_id
,a.order_id
,a.order_date
,a.ship_date
,a.ship_mode
,a.customer_id
,a.customer_name
,a.segment
,a.country_region
,a.city
,a.state
,a.postal_code
,a.region
,a.product_id
,a.category
,a.sub_category
,a.product_name
,a.sales
,a.quantity
,a.discount
,a.profit
,b.returned
from fivetran_shop_data.orders a
left join fivetran_shop_data.returns b on b.order_id=a.order_id
where returned is null
