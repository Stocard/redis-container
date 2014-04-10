
docker run --rm stocard/redis redis-cli -h $(hostname --ip-address) LLEN logstash
