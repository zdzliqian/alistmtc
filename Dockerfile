
FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"
#VOLUME /opt/alist/data/  # Commented out because it is not necessary for fixing the error.

WORKDIR /opt/alist/
COPY entrypoint.sh /entrypoint.sh
COPY install.sh /install.sh
RUN chmod +x /entrypoint.sh /install.sh; \
  /install.sh

ENV PUID=0 PGID=0 UMASK=
EX022POSE 5244/tcp  # Added "/tcp" to specify the protocol as TCP for the exposed port.

ENTRYPOINT [ "/entrypoint.sh" ]

