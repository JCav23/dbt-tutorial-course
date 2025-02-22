WITH source AS (
        SELECT *

        FROM {{ source('thelook_ecommerce', 'products') }}
)

SELECT
        -- IDs
        id AS product_id,

        -- Other
        cost,
        retail_price,
        department,
        brand

FROM source