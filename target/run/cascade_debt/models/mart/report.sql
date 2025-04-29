
  
    

  create  table "cascade_debt_db"."dbt"."report__dbt_tmp"
  
  
    as
  
  (
    


with report as (

    select
        date_witness,
        witness,
        date_agent,
        agent,
        has_weapon,
        has_hat,
        has_jacket,
        behavior
    from dbt.all_data

)

select * from report
  );
  