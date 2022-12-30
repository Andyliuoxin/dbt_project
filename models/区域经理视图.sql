{{ config(materialized='view') }}

select
 Regional_Manager as "区域经理"
,Region as "区域"
from fivetran_shop_data.people
