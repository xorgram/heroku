FROM node:16-bullseye-slim
RUN apt update && apt upgrade -y
RUN npm i -g @xorgram/xor
WORKDIR /app
CMD @xorgram/xor
