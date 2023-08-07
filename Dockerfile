
FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"

WORKDIR /opt/alist/
COPY entrypoint.sh /entrypoint.sh
COPY install.sh /install.sh
RUN chmod +x /entrypoint.sh /install.sh; \
  /install.sh

ENV PUID=0 PGID=0 UMASK=
EXPOSE 5244/tcp

ENTRYPOINT [ "/entrypoint.sh" ]
