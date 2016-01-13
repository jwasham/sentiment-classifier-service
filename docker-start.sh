#!/bin/bash
set -e

if [ "$ENV" = 'production' ]; then
    echo "*************************************"
    echo "   Running Service - PRODUCTION"
    echo "*************************************"
    exec uwsgi --http 0.0.0.0:9090 --wsgi-file /application/service.py \
               --callable application --stats 0.0.0.0:9191
else
    echo "Running Service (development)"
    exec python "/application/service.py"
fi
