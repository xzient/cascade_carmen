
  create view "cascade_debt_db"."dbt"."analysis_2__dbt_tmp"
    
    
  as (
    

WITH an_b as (
SELECT  EXTRACT(month FROM date_witness::date) AS month_n,
count(*) as total_per_month, 
COUNT(*) FILTER (WHERE has_weapon = TRUE and has_jacket=TRUE AND has_hat=FALSE) as conditional_per_month,
ROUND((COUNT(*) FILTER (WHERE has_weapon = TRUE and has_jacket=TRUE AND has_hat=FALSE) * 1.0) / COUNT(*), 4)  as probability
FROM dbt.report
GROUP BY EXTRACT(month FROM date_witness::date)
ORDER BY month_n ASC
)

SELECT  *
FROM an_b
  );