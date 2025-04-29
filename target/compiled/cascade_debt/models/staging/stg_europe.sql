


with europe_stg as (
  
  SELECT "date_witness" AS date_witness, "date_filed" AS date_agent, "witness" AS witness, "agent" AS agent, "lat_" AS latitude, "long_" AS longitude, "city" AS city, "country" AS country, "region_hq" AS city_agent, "armed?" AS has_weapon, "chapeau?" AS has_hat, "coat?" AS has_jacket, "observed_action" AS behavior
  FROM  dbt_raw.europe

)
select * from europe_stg