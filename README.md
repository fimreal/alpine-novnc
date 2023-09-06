# alpine-novnc
alpine-novnc x11 container/docker image.

[![docker_build](https://github.com/fimreal/alpine-novnc/actions/workflows/docker_build.yml/badge.svg)](https://github.com/fimreal/alpine-novnc/actions/workflows/docker_build.yml)

## base image

```bash
# git clone https://github.com/fimreal/alpine-novnc.git
# docker build -t epurs/alpine-novnc alpine-novnc
docker run --rm -p 8080:8080 epurs/alpine-novnc
```

## Environment variables
| Variable  Name | Description |
| --- | --- |
| PORT | NoVNC HTTP Port (Default: 8080) |
| DISPLAY_RESOLUTION | Default Display Resolution (Default: 1400x760) |


## custom program

### chromium

[Dockerfile](https://github.com/fimreal/alpine-novnc/blob/main/chromium/Dockerfile)

```bash
# git clone https://github.com/fimreal/alpine-novnc.git
# docker build -t epurs/alpine-novnc alpine-novnc
# docker build -t epurs/alpine-novnc:chromium alpine-novnc/chromium
docker run --rm -p 8080:8080 epurs/alpine-novnc:chromium
```

open http://host:8080
