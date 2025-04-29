
  create view "cascade_debt_db"."dbt"."stg_asia__dbt_tmp"
    
    
  as (
    


with asia_stg as (
  
  SELECT "sighting" AS date_witness, "报道" AS date_agent, "citizen" AS witness, "officer" AS agent, "纬度" AS latitude, "经度" AS longitude, "city" AS city, "nation" AS country, "city_interpol" AS city_agent, "has_weapon" AS has_weapon, "has_hat" AS has_hat, "has_jacket" AS has_jacket, "behavior" AS behavior
  FROM  dbt_raw.asia

)
select * from asia_stg
  );