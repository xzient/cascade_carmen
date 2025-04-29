{{
  config(
    materialized = 'view'
  )
}}


with asia_stg as (
  {{ rename_columns_using_mapping('asia',' dbt_raw.asia') }}
)
select * from asia_stg