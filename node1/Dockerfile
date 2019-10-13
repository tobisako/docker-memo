FROM node:10

# アプリケーションディレクトリを作成する
WORKDIR /home/node/testproj

# アプリケーションの依存関係をインストールする
COPY package.json .
COPY package-lock.json .

RUN npm install
# RUN npm install --only=production

# アプリケーションのソースをバンドルする
COPY . .

EXPOSE 8080
#CMD [ "node", "server.js" ]
CMD [ "npm", "start" ]
