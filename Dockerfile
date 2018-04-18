FROM debian:latest
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y upgrade \
    && DEBIAN_FRONTEND=noninteractive apt-get -y install apt-cacher-ng \
    && apt-get clean
CMD service apt-cacher-ng start \
    && tail -f /var/log/apt-cacher-ng/*
EXPOSE 3142
VOLUME ["/var/cache/apt-cacher-ng"]
