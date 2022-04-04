FROM node:17-bullseye-slim
WORKDIR /app
RUN apt update && apt upgrade -qy && apt install -qy wget
CMD wget -qO- https://raw.githubusercontent.com/xorgram/xor/main/scripts/start.sh | sh
