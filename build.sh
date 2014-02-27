
docker build -t stocard/redis .

sudo bash -c "bash create-upstart-config.sh > /etc/init/redis.conf"
