DROP VIEW positive;
CREATE VIEW positive AS SELECT x, y FROM fn WHERE y > 0.0;
\dv
\d positive
