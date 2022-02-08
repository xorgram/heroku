FROM node:16-bullseye-slim
RUN apt update && apt upgrade -y
WORKDIR /app
CMD npx @xorgram/xor
