FROM wordpress
# FROM node:10

# WORKDIR /home/node/testproj
#COPY package.json .
#COPY package-lock.json .
#RUN npm install

RUN apt -y update
RUN apt -y install ssh
RUN apt -y install vim

#COPY app.js .
EXPOSE 8080
EXPOSE 2222

#CMD ["/usr/sbin/sshd", "-D"]
#CMD [ "npm", "start" ]
