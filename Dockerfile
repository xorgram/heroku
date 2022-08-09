FROM denoland/deno
WORKDIR /app
ARG DATABASE_URI
ENV NO_COLOR 1
ENV PLS_CONNECTION_URI=$DATABASE_URI
CMD deno eval "await Deno.stdout.write(new TextEncoder().encode(await (await fetch(\"https://raw.githubusercontent.com/xorgram/xor/main/scripts/start.sh\")).text()))" | sh
