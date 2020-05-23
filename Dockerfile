FROM hayd/alpine-deno:1.0.1

EXPOSE 8000

WORKDIR /app

USER deno

# These steps will be re-run upon each file change in your working directory:
COPY . ./

# Added to ENTRYPOINT of base image.
CMD ["run", "--allow-env", "--allow-net", "app.ts"]