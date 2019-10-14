# AWS ECR
https://qiita.com/yumatsud/items/0acad37d10a6782ecec8

1.AWS ECR にリポジトリ登録


2.AWS (console)準備

aws configure

(aws ecr get-login --no-include-email --region ap-northeast-1)

※出力されたログインコマンドを実行する
docker login -u AWS -p eyJwYXlsb2FkIjoiNnlFMGo2SW5Gc1dlU1l6RWtnSkVQSWZ0NlRaTURGYnVVR0ZYL3RsVUVsODJtR042RXc4WnhtZ1hCZEJRNlpiS3l0MUR・・・（長い）・・・24iOjE1NzEwOTQwODJ9 https://984156848189.dkr.ecr.ap-northeast-1.amazonaws.com


docker build --no-cache -t test/test .

docker tag test:latest 984156848189.dkr.ecr.ap-northeast-1.amazonaws.com/test:latest

docker push 984156848189.dkr.ecr.ap-northeast-1.amazonaws.com/test:latest


3. ECS (Fargate) で起動試験

[以上]
