docker-compose build  
docker-compose up -d  

# nodetest1
普通

# nodetest2
 test2.Dockerfile ... CMD [ "npm", "run", "start1" ]  
 docker-compose.yml ... command: [ "npm", "run", "start2" ]  

docker-compose run nodetest1 bash   ... 単発  

# その他
docker-compose up ... 全起動。  
docker-compose run ... 単発で起動するコマンド。services指定が必要。  
