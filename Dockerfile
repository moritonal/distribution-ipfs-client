FROM moritonal/distribution-ipfs

COPY config.yml /etc/docker/registry/config.yml

EXPOSE 5000

ARG password=test

RUN mkdir -p /auth
RUN htpasswd -Bbn test test123 > /auth/htpasswd