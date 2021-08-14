FROM node:12
WORKDIR /usr/src/app
COPY package*.json ./
RUN   echo ${BUCKET_KEY} >> bucket_key.json
RUN npm install
COPY . .
EXPOSE 22
CMD ["node", "sftp-gcs.js", "--bucket", "edi-storage" , "--debug" , "debug" , "--port", "22" , "--public-key-file" , "bucket_key.json" ]