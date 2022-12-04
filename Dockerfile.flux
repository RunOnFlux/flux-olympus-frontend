FROM node:16.15.0-bullseye-slim

RUN apt-get update && \
    apt-get install -y git

WORKDIR /usr/src/app

COPY . .

RUN yarn

EXPOSE 3000
CMD [ "yarn", "start", "--port", "3000", "--host"]
