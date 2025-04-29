{{
  config(
    materialized = 'view'
  )
}}


with europe_stg as (
  {{ rename_columns_using_mapping('europe',' dbt_raw.europe') }}
)
select * from europe_stg