# syntax=docker/dockerfile:1
# check=error=true

FROM ghcr.io/baosystems/postgis:18-3.6

RUN apt-get update -qq && \
  apt-get install --no-install-recommends -y pgbackrest postgresql-18-pg-wait-sampling && \
  rm -rf /var/lib/apt/lists /var/cache/apt/archives
