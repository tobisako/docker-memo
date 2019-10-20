# wordpress + Docker 
https://qiita.com/maimax/items/5090fd37f9832fe3c5fd
=> WSL2で

## command

x docker pull mysql:5.7.21
x docker pull wordpress

docker run --name test-mysql -e MYSQL_ROOT_PASSWORD=test-pw -d mysql:5.7.21
docker run --name test-wordpress --link test-mysql:mysql -d -p 8080:80 wordpress

http://localhost:8080/
 => 1発で起動する

x docker network inspect mysql
x docker network create wordpress_network
x docker network connect wordpress_network ＜コンテナID＞

