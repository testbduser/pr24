CREATE SERVER file_server FOREIGN DATA WRAPPER file_fdw;
CREATE FOREIGN TABLE fn_file(x FLOAT, y FLOAT) SERVER file_server
OPTIONS (filename '/home/postgres/pr24/sine.csv', format 'csv');
\dv
\d positive_tab
\dE
