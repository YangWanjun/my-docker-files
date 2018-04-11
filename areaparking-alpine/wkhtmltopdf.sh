#!/bin/sh
pids=$(pidof Xvfb)
if [ -n "$pids" ]; then
    DISPLAY=:99 /usr/bin/wkhtmltopdf -q $*
else
    nohup Xvfb :99 -screen 0 1920x1200x24 > /tmp/null &
    DISPLAY=:99 /usr/bin/wkhtmltopdf -q $*
fi
