FROM ubuntu:22.04
WORKDIR /var/www
COPY monitor.sh /usr/local/bin/monitor.sh
RUN chmod +x /usr/local/bin/monitor.sh
CMD ["/usr/local/bin/monitor.sh"]