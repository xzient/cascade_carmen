{{
  config(
    materialized = 'view'
  )
}}


with indian_stg as (
  {{ rename_columns_using_mapping('indian',' dbt_raw.indian') }}
)
select * from indian_stg