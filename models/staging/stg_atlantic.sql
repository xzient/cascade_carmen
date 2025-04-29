{{
  config(
    materialized = 'view'
  )
}}


with atlantic_stg as (
  {{ rename_columns_using_mapping('atlantic',' dbt_raw.atlantic') }}
)
select * from atlantic_stg