FROM node:10

WORKDIR /home/node/t2

COPY package.json .
COPY package-lock.json .

RUN npm install

COPY src ./src/

EXPOSE 8081 8082

CMD [ "npm", "run", "start1" ]
