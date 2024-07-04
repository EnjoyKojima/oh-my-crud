FROM oven/bun

WORKDIR /var/www/html

# 必要なものをインストール
RUN apt-get update \
    && apt-get -y install --no-install-recommends \
    git \
    curl \
    unzip \
# キャッシュ削除
&& apt-get clean

COPY ./app/bun.lockb ./app/bun.lockb
COPY ./app/node_modules ./app/node_modules

CMD ["/bin/bash"]