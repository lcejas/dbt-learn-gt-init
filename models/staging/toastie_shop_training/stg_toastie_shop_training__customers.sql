with 

source as (

    select * from {{ source('toastie_shop_training', 'customers') }}

),

renamed as (

    select

    from source

)

select * from renamed