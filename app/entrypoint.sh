#!/bin/sh
export CONTAINER_START="$(TZ=GMT date +"%a, %d %b %Y %T %Z")"
export CONTAINER_BUILD="$(cat /app/container_build_date)"
exec "$@"