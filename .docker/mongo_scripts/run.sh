#!/bin/bash
echo 'init'
# Initialize first run
if [[ -e /.firstrun ]]; then
    /scripts/first_run.sh
fi

# Start MongoDB
echo "Starting MongoDB..."
# /usr/bin/mongod --dbpath /data --auth $@
/usr/bin/mongod --auth $@