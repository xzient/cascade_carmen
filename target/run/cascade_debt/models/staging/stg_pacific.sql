
  create view "cascade_debt_db"."dbt"."stg_pacific__dbt_tmp"
    
    
  as (
    


with pacific_stg as (
  
  SELECT "sight_on" AS date_witness, "file_on" AS date_agent, "sighter" AS witness, "filer" AS agent, "lat" AS latitude, "long" AS longitude, "town" AS city, "nation" AS country, "report_office" AS city_agent, "has_weapon" AS has_weapon, "has_hat" AS has_hat, "has_jacket" AS has_jacket, "behavior" AS behavior
  FROM  dbt_raw.pacific

)
select * from pacific_stg
  );