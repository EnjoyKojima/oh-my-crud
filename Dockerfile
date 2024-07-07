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

CMD ["/bin/bash"]