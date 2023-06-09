set search_path to ads_main;
-- write all and execute sqls
SELECT 'ALTER TABLE "ticket model".' || table_name || ' DROP COLUMN ' || column_name || ';' AS sql_statement
FROM information_schema.columns
WHERE column_name LIKE 'ads_%';
select * from "ticket model"icke





CREATE VIEW stg_tm_ticket_fevo_1 AS SELECT * FROM stg_tm_ticket_fevo;


CREATE view vw_f_ticket_sales_audit_daily_testing AS SELECT * FROM vw_f_ticket_sales_audit_daily_testing2;
CREATE VIEW vw_f_ticket_sales_event_audit_daily AS SELECT * FROM vw_f_ticket_sales_event_audit_daily2;
CREATE VIEW vw_sphere_ticket_purchase AS SELECT * FROM vw_sphere_ticket_purchase2;
CREATE VIEW vw_ticket_flash_adj AS SELECT * FROM vw_ticket_flash_adj2;

select * from mv_tbl__mv_ticketmaster_host_audit__0 limit 10;

--ticket
select * from svv_tables where table_schema = 'ads_main' and  table_name like '%ticket%' order by table_type, table_name;

select * from svv_columns where table_name ='f_ticket_sales_event_audit' limit 10;

select distinct(sell_location_name) from vw_f_ticket_sales_event_audit_daily limit 10;
select distinct(ticket_sell_location_name) from d_ticket_type_flags limit 10;

select count(*) from f_ticket_sales_event_audit_detail_daily;
select count(*) from f_ticket_sales_event_audit_daily;
select count(*) from f_ticket_sales_event_audit_detail;
select count(*) from f_ticket_sales_event_audit;
select count(*) from f_ticket_sales_host_event_audit;
select count(*) from f_ticket_sales_host_event_audit_snapshot;

select count(*) from vw_f_ticket_sales_event_audit_daily;
select count(*) from t_ticket_sales_audit;
select count(*) from t_ticket_sales_event_data_quality;

select * from t_ticket_sales_audit limit 10;
select * from f_ticket_sales_event_audit_daily limit 10;
select * from t_ticket_sales_event_data_quality limit 10;

select * from d_price_code dpc where price_code_id=8933128;

select * from f_ticket_sales_host_event_audit ftshea limit 10;

--fmb
select * from svv_tables where table_schema = 'ads_main' and  table_name like '%fmb%' order by table_type, table_name;

select * from svv_columns where table_name ='f_ticket_sales_event_audit' limit 10;

select distinct(tm_event_id) from t_fmb_sales_tender_dtls tfstd order by tm_event_id limit 20;
select distinct(event_plan_id) from f_fmb_sales_tender_dtls ffstd order by event_plan_id limit 10;

