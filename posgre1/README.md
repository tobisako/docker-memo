# posgre1
https://solutionware.jp/blog/tag/postgresql/  

ダンプデータ（アーカイブ形式）を復元するサンプル。  
$ psql --version  
psql (PostgreSQL) 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)  

id: postgres  
pw: password  
psql -h localhost -p 5432 -U postgres -d testdb  
psql -h localhost -p 5432 -U postgres -d postgres  

\l  
\c testdb  

# testdb.dump作成方法
pg_dump -h localhost -p 5432 -U postgres -Fc testdb > testdb.dump  
※pg_restore時、ダンプファイル生成者がrootだとdocker-compose up でエラーになる現象があった。  

# データ投入

CREATE DATABASE testdb;  
※docker-compose.ymlでPOSTGRES_DB: testdbすると自動作成されるが、dump取り込みでエラーが出る。  
  
CREATE TABLE users (
	id			varchar(80),
	name		text		NOT NULL,
	age			integer,
	update_time	date
);

INSERT INTO users VALUES (0, 'tarou', 56, current_timestamp);
INSERT INTO users VALUES (0, 'hanako', 28, current_timestamp);


# volumes
volumes:  
  - ./db/sh:/docker-entrypoint-initdb.d  # （特殊）.sh実行  
  - ./db/data:/data                      # マウントポイント  
