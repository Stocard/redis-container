
FROM mirkokiefer/redis

ADD redis.conf /etc/redis.conf

VOLUME ["/data"]
VOLUME ["/logs"]

CMD ["redis-server", "/etc/redis.conf"]
