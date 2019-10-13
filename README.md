# docker-memo

# alpine

ex)
docker build --tag tobisako/test01 .  
docker run --publish 8000:3000 --detach --name orecontainer --env PORT=3000 tobisako/test01  
docker exec -it 52dc6ebaabee ash  


# ubuntu

・minimal ubuntu  
https://ubuntu.com/blog/minimal-ubuntu-released

ex)
docker build --tag tobisako/ubu1 .  
docker run -it tobisako/ubu1


# node1
https://nodejs.org/ja/docs/guides/nodejs-docker-webapp/

docker build --tag tobisako/node-web-app .  
docker run -p 8001:8080 -d tobisako/node-web-app  
http://localhost:8001
