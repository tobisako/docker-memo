# posgre1
https://solutionware.jp/blog/tag/postgresql/


psql -h localhost -p 5432 -U root -d postgres
psql -h localhost -p 5432 -U root -d testdb
pg_dump -h localhost -p 5432 -U root -d testdb > db.dump.testdb
\l
\c testdb

データ投入：

CREATE DATABASE testdb;

CREATE TABLE users (
	id			varchar(80),
	name		text		NOT NULL,
	age			integer,
	update_time	date
);

INSERT INTO users VALUES (0, 'tarou', 56, current_timestamp);
INSERT INTO users VALUES (0, 'hanako', 28, current_timestamp);
