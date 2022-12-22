INSERT INTO fn (x) SELECT random() * 10 FROM generate_series(1, 10000);
UPDATE fn SET y = sin(x);
SELECT x, y FROM fn ORDER BY x LIMIT 10;
\d fn
