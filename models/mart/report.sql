{{ config(
    materialized = 'table',
    indexes=[{'columns': ['date_witness', 'witness'], 'unique': True}],
) }}


with report as (

    select
        date_witness,
        witness,
        date_agent,
        agent,
        has_weapon,
        has_hat,
        has_jacket,
        behavior
    from dbt.all_data

)

select * from report