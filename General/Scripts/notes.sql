
set search_path to ads_main;
--dimensional tables
select * from d_account_rep dar  join d_customer_account using(tm_acct_id) limit 10;  

select count(*), count(distinct tm_event_id) from d_event_plan  limit 10;
select * from f_event_cost fec  limit 10;
select * from d_engagement_event dee  limit 10;
select * from d_event_plan dep where event_plan_id <>inet_event_id ;



--system catalog tables:information about the database, tables, views, columns
--pg_tables,pg_views,pg_columns,pg_indexes,pg_constraints,pg_user,pg_roles,pg_namespace:info of database schemas

SELECT *
FROM pg_catalog.pg_tables
WHERE schemaname = 'ads_main';

SELECT *
FROM pg_catalog.pg_views --contains view definition
WHERE schemaname = 'ads_main';

--information schema

SELECT table_schema, table_name, column_name, data_type
FROM information_schema.columns
WHERE table_schema = 'ads_main' AND table_name = 'd_event_plan';

--check if exists FK relationship: left join,return rows then not hold
SELECT t1.column_name, t2.table_name
FROM your_table_name AS t1
LEFT JOIN referenced_table_name AS t2 ON t1.column_name = t2.primary_key_column_name
WHERE t2.primary_key_column_name IS NULL;

SELECT *--sn_parent_req_item_sys_id
FROM f_event_cost AS t1
left JOIN d_engagement_event AS t2 ON t1.engagement_dim_id= t2.engagement_event_id
WHERE t2.engagement_event_id IS NULL;

select count(*) from f_event_cost fec;


