# Postgis + pgBackRest

_Currently used Postgres version: [18.3](https://www.postgresql.org/docs/18/release-18-3.html)_

This is a Docker image based on a multi-architecture [Postgis image](https://github.com/baosystems/docker-postgis) and [pgBackRest](https://pgbackrest.org) installed. We use the Debian based Postgis image to simply install `pgBackRest` with `apt`.

This image allows to run a Docker based Postgres installation with Docker based backup tooling:

```
docker pull ghcr.io/fejo-dk/postgis-with-pgbackrest:main
```

**Disclaimer** No support is provided. If you do not understand the implications of using this image, do not use it and use the official images.

## Updating this image

To update we need to trigger a new build by changing something in the repo. Most of the time we don't need to change any version number though. Thus you can just increase the Postgres version used in this `README`.
