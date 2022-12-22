DROP TABLE positive_tab CASCADE;
CREATE TABLE positive_tab(x FLOAT, y FLOAT);
CREATE RULE "_RETURN" AS ON SELECT TO positive_tab DO INSTEAD SELECT * FROM fn WHERE y > 0.0;
\dv
\d positive_tab
SELECT * FROM positive_tab ORDER BY x LIMIT 15;
