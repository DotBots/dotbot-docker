FROM ubuntu:latest
LABEL maintainer="alexandre.abadie@inria.fr"

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        openssl \
        && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /srv

COPY entrypoint.sh /srv/entrypoint.sh
RUN chmod +x /srv/entrypoint.sh

ENTRYPOINT ["/srv/entrypoint.sh"]
