# alpine-novnc
alpine-novnc x11 container/docker image.

## base image

```bash
docker run --rm -p 8080:8080 epurs/alpine-novnc
```

## custom program

### chromium

[Dockerfile](https://github.com/fimreal/alpine-novnc/blob/main/chromium/Dockerfile)

```bash
docker run --rm -p 8080:8080 epurs/alpine-novnc:chromium
```

open http://host:8080