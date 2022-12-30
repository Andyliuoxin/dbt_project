{{ config(materialized='view') }}

select
 regional_manager as "区域经理"
,region as "区域"
from fivetran_shop_data.people
