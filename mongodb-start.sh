#!/bin/bash
set -e

trap 'kill -2 1; wait 1' SIGTERM

rm /data/db/mongod.lock || true
mongod --dbpath /data/db --repair || true
mongod -f /etc/mongod.conf
