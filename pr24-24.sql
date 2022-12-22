CREATE MATERIALIZED VIEW fn_all AS SELECT * FROM fn_file WITH DATA;
SELECT count(*), 'file' FROM fn_file UNION SELECT count(*), 'mat. view' FROM fn_all;
