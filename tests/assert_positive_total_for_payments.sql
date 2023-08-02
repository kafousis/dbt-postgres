-- Refunds have a negative amount, so the total amount should always be >= 0.
-- Therefore return records where this isn't true to make the test fail.
select
    order_id,
    sum(amount)
from {{ ref('stg_payments') }}
group by 1
having not (sum(amount) >= 0)