FROM debian:stretch

RUN apt-get update && apt-get upgrade && apt-get install -y dnsmasq supervisor

COPY supervisord.conf /etc/supervisord.conf

CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]
