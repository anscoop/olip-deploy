#!/bin/sh

. /opt/api/venv/bin/activate

LANG=C.UTF-8 flask db upgrade

exec "$@"
