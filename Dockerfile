FROM node:12
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 9022
CMD ["node", "sftp-gcs.js", "--bucket", "edi-storage" , "--debug" , "debug" , "--port", "22"]