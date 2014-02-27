set -u
set -e

HOME_DIR=$HOME

cat <<'EOF'
description "redis"
start on filesystem and started docker
stop on runlevel [!2345]
respawn
script
  # Wait for docker to finish starting up first.
  FILE=/var/run/docker.sock
  while [ ! -e $FILE ] ; do
    inotifywait -t 2 -e create $(dirname $FILE)
  done
EOF
cat <<EOF
  exec bash $HOME_DIR/redis/run.sh
end script
EOF
