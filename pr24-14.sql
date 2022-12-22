CREATE RULE prevent_updates AS ON UPDATE TO fn_backup DO INSTEAD NOTHING;
SELECT * FROM pg_rules;
UPDATE fn_backup SET y = 0;
SELECT * FROM fn_backup LIMIT 10;

