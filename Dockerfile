FROM node:17-bullseye-slim
WORKDIR /app
CMD wget -qO- https://raw.githubusercontent.com/xorgram/xor/main/scripts/start.sh | sh
