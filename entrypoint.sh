#!/bin/bash
env >> /etc/environment

nohup gunicorn keep_alive:app --bind 0.0.0.0:8080 --access-logfile - > /proc/1/fd/1 2>/proc/1/fd/2 &

cron -f
