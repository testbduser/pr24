CREATE UNIQUE INDEX idx_coord ON fn_all USING btree (x);
REFRESH MATERIALIZED VIEW CONCURRENTLY fn_all;
\dm
\d fn_all

