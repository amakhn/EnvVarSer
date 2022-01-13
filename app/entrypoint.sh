#!/bin/sh

export CONTAINER_BUILD="$(cat /build_timestamp)"
date > ./run_timestamp
chmod 777 ./run_timestamp
chmod 777 ./build_timestamp
exec "$@"