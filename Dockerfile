FROM node:12
ARG username
ARG password
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 22
CMD ["node", "sftp-gcs.js", "--bucket", "edi-storage" , "--debug" , "debug" , "--port", "22", "--user" , "$username" , "--password" , "$password" ]