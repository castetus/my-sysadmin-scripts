FROM ubuntu:22.04

RUN apt-get update && apt-get install -y --no-install-recommends python3 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /var/www

COPY monitor.sh /usr/local/bin/monitor.sh
RUN chmod +x /usr/local/bin/monitor.sh

CMD ["/bin/bash", "-c", "/usr/local/bin/monitor.sh & exec python3 -m http.server 8080"]