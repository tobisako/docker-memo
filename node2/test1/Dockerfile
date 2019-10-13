FROM node:10

WORKDIR /root

RUN apt-get update && apt-get install -y vim

COPY app.js /root/

EXPOSE 8080

CMD [ "node", "app.js" ]
