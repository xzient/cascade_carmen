


with city_coordinates as (

    select distinct
        city,
        country,
        latitude,
        longitude
    from dbt.all_data

)

select * from city_coordinates