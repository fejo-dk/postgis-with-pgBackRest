# syntax=docker/dockerfile:1
# check=error=true

FROM docker.io/library/postgres:18-trixie

RUN apt-get update -qq && \
  apt-get install --no-install-recommends -y pgbackrest && \
  rm -rf /var/lib/apt/lists /var/cache/apt/archives

RUN groupadd --system --gid 1000 pgbackrest && \
    useradd pgbackrest --uid 1000 --gid 1000 --create-home --shell /bin/bash

USER pgbackrest

CMD ["pgbackrest"]
