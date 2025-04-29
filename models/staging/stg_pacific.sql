{{
  config(
    materialized = 'view'
  )
}}


with pacific_stg as (
  {{ rename_columns_using_mapping('pacific',' dbt_raw.pacific') }}
)
select * from pacific_stg