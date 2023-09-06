FROM alpine

RUN apk add bash fluxbox git supervisor xvfb x11vnc &&\
    git clone --depth 1 https://github.com/novnc/noVNC.git /noVNC &&\
    git clone --depth 1 https://github.com/novnc/websockify /noVNC/utils/websockify &&\
    rm -rf /noVNC/.git /noVNC/utils/websockify/.git &&\
    ln -s /noVNC/vnc_lite.html /noVNC/index.html

# Setup environment variables
ENV DEBIAN_FRONTEND=noninteractive \
    DISPLAY=:0 \
    DISPLAY_RESOLUTION="1400x760" \
    LC_ALL=C.UTF-8 \
    PORT=8080

EXPOSE 8080

ADD supervisord.conf /supervisord.conf

CMD ["/usr/bin/supervisord", "-c", "/supervisord.conf"]
