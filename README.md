# docker-memo
dockerいろいろ。  

# alpine1
軽量alpineテスト。ポイントは ash かも。

docker build --tag tobisako/test01 .  
docker run --publish 8000:3000 --detach --name orecontainer --env PORT=3000 tobisako/test01  
docker exec -it 52dc6ebaabee ash  


# aws_ecr
ローカルで作成したdockerイメージを、AWS ECR にアップして Fargate起動する。
docker -> aws Fargate


# node1
nodeイメージ起動テスト１
node.jsアプリ（app.js）を起動しwebアクセスする。
https://nodejs.org/ja/docs/guides/nodejs-docker-webapp/

docker build --tag tobisako/node-web-app .  
docker run -p 8001:8080 -d tobisako/node-web-app  
http://localhost:8001


# node2
nodeイメージ起動テスト２
docker-composeを使用して、2つのdockerイメージを同時起動する。
see node2_README.md


# posgre1
postgreSQLイメージ起動テスト１
あらかじめDBダンプを用意し、docker起動と同時にDBイメージ（バイナリ）を読み込んで初期化する。
restore archive-dump.


# posgre2
postgreSQLイメージ起動テスト２
初期データSQLファイルを用意し、docker起動と同時にSQLを取り込み初期化させる。
restore sql.


# posgre3
postgreSQLイメージ起動テスト３
DOCKERコンポーネントの外にDBデータフォルダを設定し、DBデータを永続化する。


# ubuntu
素のUbuntu18.4イメージ起動テスト
・minimal ubuntu  
https://ubuntu.com/blog/minimal-ubuntu-released

ex)  
docker build --tag tobisako/ubu1 .  
docker run -it tobisako/ubu1


# wordpress1
dockerでwordpress環境をサクっと立ち上げるテスト


# wp_ssh
dockerでwordpressを立ち上げつつSSH接続設定も行うテスト


# メモ
docker stop $(docker ps -aq)  
docker rm $(docker ps -aq)  
docker rmi $(docker images -q)  
