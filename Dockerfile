FROM alpine:latest
MAINTAINER infinitely <sam@infinitely.io>

EXPOSE 6379

# Install Redis 3
RUN apk --update add redis &&\
# Cleanup
    rm -rf /var/cache/apk/* \
           /tmp/* &&\
# Create Redis Data Volume Path
    mkdir /data &&\
    chown -R redis:redis /data


USER redis

VOLUME ["/data"]

ENTRYPOINT ["/usr/bin/redis-server"]

CMD ["--version"]
