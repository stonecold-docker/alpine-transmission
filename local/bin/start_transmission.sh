#!/bin/sh

set -e

chown -R ${RUN_USER_UID:-1000}:${RUN_USER_GID:-100} /conf.d/transmission-daemon

exec su-exec ${RUN_USER_NAME:-forumi0721} /usr/bin/transmission-daemon -f -g /conf.d/transmission-daemon
