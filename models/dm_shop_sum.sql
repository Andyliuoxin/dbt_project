select
 a.order_id
,sum(a.sales) as sales
from {{ ref('dw_shop_data') }} a
group by
a.order_id

