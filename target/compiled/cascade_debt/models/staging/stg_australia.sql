


with australia_stg as (
  
  SELECT "witnessed" AS date_witness, "reported" AS date_agent, "observer" AS witness, "field_chap" AS agent, "lat" AS latitude, "long" AS longitude, "place" AS city, "nation" AS country, "interpol_spot" AS city_agent, "has_weapon" AS has_weapon, "has_hat" AS has_hat, "has_jacket" AS has_jacket, "state_of_mind" AS behavior
  FROM  dbt_raw.australia

)
select * from australia_stg