with 

source as (

    select * from {{ source('toastie_shop_training', 'orders') }}

),

renamed as (

    select

    from source

)

select * from renamed