FROM oven/bun

WORKDIR /app

RUN apt-get update && apt-get -y install --no-install-recommends

CMD ["/bin/bash"]
