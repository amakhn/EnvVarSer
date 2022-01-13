#!/bin/sh
export CONTAINER_START="$(date)"
export CONTAINER_BUILD="$(cat /app/container_build_date)"
exec "$@"