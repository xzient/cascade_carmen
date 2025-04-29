{{
  config(
    materialized='view',
    alias='all_data'
  )
}}

SELECT * FROM {{ ref('stg_africa') }}
UNION ALL
SELECT * FROM {{ ref('stg_america') }}
UNION ALL
SELECT * FROM {{ ref('stg_asia') }}
UNION ALL
SELECT * FROM {{ ref('stg_atlantic') }}
UNION ALL
SELECT * FROM {{ ref('stg_australia') }}
UNION ALL
SELECT * FROM {{ ref('stg_europe') }}
UNION ALL
SELECT * FROM {{ ref('stg_indian') }}
UNION ALL
SELECT * FROM {{ ref('stg_pacific') }}