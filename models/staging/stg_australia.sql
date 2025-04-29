{{
  config(
    materialized = 'view'
  )
}}


with australia_stg as (
  {{ rename_columns_using_mapping('australia',' dbt_raw.australia') }}
)
select * from australia_stg