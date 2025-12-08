# syntax=docker/dockerfile:1
# check=error=true

FROM ghcr.io/baosystems/postgis:18-3.6

RUN apt-get update -qq && \
  apt-get install --no-install-recommends -y curl gpgv lsb-release && \
  curl -o percona-release_latest.trixie_all.deb https://repo.percona.com/apt/percona-release_latest.trixie_all.deb && \
  dpkg -i percona-release_latest.trixie_all.deb && \
  apt-get update -qq && \
  percona-release setup ppg-18 && \
  apt-get install -y pgbackrest postgresql-18-pg-wait-sampling percona-pg-stat-monitor18 && \
  rm -rf /var/lib/apt/lists /var/cache/apt/archives
