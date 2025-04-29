
  create view "cascade_debt_db"."dbt"."all_data__dbt_tmp"
    
    
  as (
    

SELECT * FROM "cascade_debt_db"."dbt"."stg_africa"
UNION ALL
SELECT * FROM "cascade_debt_db"."dbt"."stg_america"
UNION ALL
SELECT * FROM "cascade_debt_db"."dbt"."stg_asia"
UNION ALL
SELECT * FROM "cascade_debt_db"."dbt"."stg_atlantic"
UNION ALL
SELECT * FROM "cascade_debt_db"."dbt"."stg_australia"
UNION ALL
SELECT * FROM "cascade_debt_db"."dbt"."stg_europe"
UNION ALL
SELECT * FROM "cascade_debt_db"."dbt"."stg_indian"
UNION ALL
SELECT * FROM "cascade_debt_db"."dbt"."stg_pacific"
  );