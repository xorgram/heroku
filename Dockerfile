FROM denoland/deno
WORKDIR /app
CMD deno run --allow-env --allow-net --allow-read --allow-run --allow-write --import-map=https://raw.githubusercontent.com/xorgram/xor/deno/import_map.json -r https://raw.githubusercontent.com/xorgram/xor/deno/main.ts
