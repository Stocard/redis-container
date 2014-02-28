set -u
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

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
  HOME=$HOME exec bash $DIR/run.sh
end script
EOF
