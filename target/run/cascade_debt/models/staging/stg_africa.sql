
  create view "cascade_debt_db"."dbt"."stg_africa__dbt_tmp"
    
    
  as (
    


with africa_stg as (
  
  SELECT "date_witness" AS date_witness, "date_agent" AS date_agent, "witness" AS witness, "agent" AS agent, "latitude" AS latitude, "longitude" AS longitude, "city" AS city, "country" AS country, "region_hq" AS city_agent, "has_weapon" AS has_weapon, "has_hat" AS has_hat, "has_jacket" AS has_jacket, "behavior" AS behavior
  FROM  dbt_raw.africa

)
select * from africa_stg
  );