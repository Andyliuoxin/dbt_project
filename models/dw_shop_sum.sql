select
 a.order_id
,sum(a.sales) as sales
from {{ ref('fund_portfolio_hold_em') }} a
group by
a.order_id

