
FROM mirkokiefer/redis

ADD redis.conf /etc/redis.conf

VOLUME ["/data"]

CMD ["redis-server", "/etc/redis.conf"]
