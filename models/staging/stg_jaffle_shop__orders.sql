with orders as (

    select
        id as order_id

    from {{ source('jaffle_shop', 'orders') }}

)

select * from orders