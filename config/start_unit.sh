#!/bin/sh

ln -sf /dev/stdout /var/log/unit.log

exec "$@"
