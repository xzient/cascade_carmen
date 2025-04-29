{{
  config(
    materialized = 'view'
  )
}}


with america_stg as (
  {{ rename_columns_using_mapping('america', 'dbt_raw.america') }}
)
select * from america_stg