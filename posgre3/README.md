# データ永続化

この位置を共有する事で永続化
    volumes:
      - ./docker/postgres:/var/lib/postgresql/data

※注意：内部はdockerが作成するので、フォルダに入れなくなるっぽい。

docker-compose up -d
psql -h localhost -p 5432 -U postgres
\conninfo  
