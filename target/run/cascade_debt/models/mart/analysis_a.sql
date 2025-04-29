
  create view "cascade_debt_db"."dbt"."answer_a__dbt_tmp"
    
    
  as (
    

WITH an_a as (
SELECT  EXTRACT(month FROM date_witness::date) AS month_n, f.city_agent,
    COUNT(*) AS record_count,
	ROW_NUMBER() OVER (PARTITION BY EXTRACT(month FROM date_witness::date) ORDER BY COUNT(*) DESC) AS row_num
FROM dbt.filing as f
LEFT JOIN dbt.report as r ON f.date_agent = r.date_agent AND f.agent=r.agent
GROUP BY EXTRACT(month FROM date_witness::date), f.city_agent
ORDER BY month_n ASC, record_count DESC)
,
an_a2 as (
SELECT  month_n, city_agent, record_count 
FROM an_a
WHERE row_num=1
ORDER BY month_n
)

SELECT * FROM an_a2
  );