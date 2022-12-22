INSERT INTO positive (x) SELECT 10 + random() * 10 FROM generate_series(1, 10000);
UPDATE fn SET y = sin(x);
