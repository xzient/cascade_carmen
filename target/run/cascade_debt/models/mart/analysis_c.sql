
  create view "cascade_debt_db"."dbt"."answer_c__dbt_tmp"
    
    
  as (
    

WITH an_c as (
SELECT behavior, count(*) as ocurrences
FROM dbt.report
GROUP BY behavior
ORDER BY ocurrences DESC
LIMIT 3
)

SELECT  *
FROM an_c
  );