FROM denoland/deno
RUN apt update
RUN apt install curl jq -y
WORKDIR /app
CMD BASE_URL=https://raw.githubusercontent.com/xorgram/xor/$(curl -s "https://api.github.com/repos/xorgram/xor/tags" | jq -r '.[0].name') && deno run --allow-env --allow-net --allow-read --allow-run --allow-write --import-map=$BASE_URL/import_map.json -r $BASE_URL/main.ts
