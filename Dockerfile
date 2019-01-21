FROM ubuntu:18.04

COPY run.sh /run.sh
RUN chmod 0755 /run.sh
RUN mkdir -p /var/run/sshd
RUN apt-get update && \
    apt-get install -y openconnect openssh-server netcat-traditional ocproxy dnsutils telnet lynx curl

ENTRYPOINT ["/run.sh"]
