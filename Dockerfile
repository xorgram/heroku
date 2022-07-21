FROM denoland/deno
WORKDIR /app
CMD deno eval "await Deno.stdout.write(new TextEncoder().encode(await (await fetch(\"https://raw.githubusercontent.com/xorgram/xor/main/scripts/start.sh\")).text()))" | sh
