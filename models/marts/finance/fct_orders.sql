with approved_payments as (
 
 select * from {{ref('stg_stripe__payments')}}
    where payment_status = 'success'
)

, orders as (
 select * from {{ref('stg_jaffle_shop__orders')}}
)

, final as (
    select
     orders.order_id,
     orders.customer_id,
     approved_payments.amount
    from orders
    left join approved_payments using (order_id)
)

select * from final