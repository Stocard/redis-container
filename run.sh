
REDIS_DATA=$HOME/data/redis
REDIS_LOGS=$HOME/logs/redis

mkdir -p $REDIS_DATA
mkdir -p $REDIS_LOGS

sudo sysctl vm.overcommit_memory=1

exec docker run --rm -p 6379:6379 -v $REDIS_DATA:/data -v $REDIS_LOGS:/logs stocard/redis
