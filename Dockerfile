FROM node:20-alpine

WORKDIR /var/www/html

# bashをインストール
RUN apk update && apk add --no-cache bash

# libstdc++をインストール
RUN apk add --no-cache libstdc++

# COPY ./app/bun.lockb ./var/www/html/bun.lockb
# COPY ./app/node_modules ./var/www/html/node_modules

CMD ["/bin/bash"]
