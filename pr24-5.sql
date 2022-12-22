DROP VIEW roots;
CREATE VIEW roots AS SELECT round(x::numeric, 2) AS x FROM fn WHERE abs(y) < 0.0013 ORDER BY x;
\d fn
\dv
\d roots
