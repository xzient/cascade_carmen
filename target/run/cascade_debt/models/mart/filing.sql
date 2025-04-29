
  
    

  create  table "cascade_debt_db"."dbt"."filing__dbt_tmp"
  
  
    as
  
  (
    


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
  );
  