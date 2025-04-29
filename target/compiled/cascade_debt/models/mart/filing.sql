


with filing as (

    select
        date_agent,
        agent,
        city,
        country,
        city_agent
    from dbt.all_data
)

select * from filing