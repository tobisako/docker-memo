# posgre2
psql -f で初期sqlデータを取り込む。

psql -h localhost -p 5433 -U postgres -d test2db  
\conninfo  

# dump
pg_dump -h localhost -p 5433 -U postgres -d test2db > test2db.sql  

# SQL

POSTGRES_DB: test2db  

CREATE TABLE company (
	id			varchar(80),
	name		text		NOT NULL,
	update_time	date
);
INSERT INTO company VALUES (0, 'A company', current_timestamp);
INSERT INTO company VALUES (1, 'B company', current_timestamp);

CREATE TABLE account (
	id			varchar(80),
	name		text		NOT NULL,
	age			integer,
    company_id  varchar(80),
	update_time	date
);
INSERT INTO account VALUES (0, 'tarou', 56, 1, current_timestamp);
INSERT INTO account VALUES (1, 'hanako', 28, 0, current_timestamp);
INSERT INTO account VALUES (2, 'hideo', 43, 1, current_timestamp);
