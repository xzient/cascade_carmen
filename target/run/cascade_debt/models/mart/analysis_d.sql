
  create view "cascade_debt_db"."dbt"."answer_d__dbt_tmp"
    
    
  as (
    

WITH an_c as (
SELECT behavior, count(*) as ocurrences
FROM dbt.report
GROUP BY behavior
ORDER BY ocurrences DESC
LIMIT 3
),
common_behavior as ( 
SELECT EXTRACT(month FROM date_witness::date) AS month_n, behavior, (case when behavior in (SELECT behavior FROM an_c) then TRUE else FALSE end) as top_behavior
FROM dbt.report
),

an_4 as (
SELECT month_n, count(*) as total_per_month,
COUNT(*) FILTER (WHERE top_behavior = TRUE) as conditional_per_month,
ROUND((COUNT(*) FILTER (WHERE top_behavior = TRUE) * 1.0) / COUNT(*), 4)  as probability
FROM common_behavior
GROUP BY month_n
ORDER BY month_n ASC
)

SELECT * FROM an_4
  );