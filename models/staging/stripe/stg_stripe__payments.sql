select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,

    -- amount is stored in cents, convert it to dollars
    created as created_as,
    amount / 100 as amount

from {{ source('stripe', 'payment') }}
