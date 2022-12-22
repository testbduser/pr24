CREATE SCHEMA lab_view;
ALTER TABLE fn SET SCHEMA lab_view;
ALTER MATERIALIZED VIEW fn_all SET SCHEMA lab_view;
ALTER TABLE fn_backup SET SCHEMA lab_view;
ALTER FOREIGN TABLE fn_file SET SCHEMA lab_view;
ALTER MATERIALIZED VIEW fn_view SET SCHEMA lab_view;
ALTER VIEW positive SET SCHEMA lab_view;
ALTER VIEW positive_tab SET SCHEMA lab_view;
ALTER VIEW roots SET SCHEMA lab_view;
