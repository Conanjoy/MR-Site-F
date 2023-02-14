#!/bin/bash
env >> /etc/environment

nohup gunicorn keep_alive:app --bind 0.0.0.0:8080 &

python3 ms_rewards_farmer.py --headless --fast --telegram "${TOKEN}" "${CHAT_ID}" &

cron -f
