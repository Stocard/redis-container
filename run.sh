
sudo sysctl vm.overcommit_memory=1

exec docker run -p 6379:6379 stocard/redis
