FROM node:8.2.1-alpine

# イメージの中にアプリ用ディレクトリを作成
RUN mkdir -p /opt/myapp

# イメージの中の"cd"
WORKDIR /opt/myapp

# Dockerfileのディレクトリの中身をイメージの中のWORKDIRにコピー
COPY . .

# コンテナのポート8000をホストに開示
EXPOSE 8000

# イメージの起動の時実行されるコマンド
CMD ["npx", "http-server", "-p", "8000"]

