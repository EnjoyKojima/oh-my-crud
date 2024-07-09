FROM oven/bun

WORKDIR /var/www/html

# システムの更新とパッケージのインストール
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        curl \
        unzip \
        openssl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 注意: 
# - 一つのRUNコマンドにまとめることで、Dockerイメージのレイヤー数を減らし、サイズを最適化します。
# - 最後にapt-getのキャッシュをクリーンアップし、不要なファイルを削除して、イメージサイズを小さくします。

CMD ["/bin/bash"]