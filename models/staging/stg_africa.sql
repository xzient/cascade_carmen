{{
  config(
    materialized = 'view'
  )
}}


with africa_stg as (
  {{ rename_columns_using_mapping('africa',' dbt_raw.africa') }}
)
select * from africa_stg