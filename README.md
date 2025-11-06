# Postgis + pgBackRest

This is a Docker image based on a multi-architecture [Postgis image](https://github.com/baosystems/docker-postgis) and [pgBackRest](https://pgbackrest.org) installed. We use the Debian based Postgis image to simply install `pgBackRest` with `apt`.

This image allows to run a Docker based Postgres installation with Docker based backup tooling.
