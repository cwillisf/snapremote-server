# sync this version with .nvmrc
FROM node:24-slim

RUN apt-get update && apt-get install -y ffmpeg

WORKDIR /app

COPY . /app

RUN npm ci

# sync this with PORT in docker-compose.yaml
EXPOSE 3000

CMD ["npm", "run", "start"]
