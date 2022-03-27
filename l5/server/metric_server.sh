#!/bin/bash

nc -q 0 -l 9000 |& unbuffer -p tr '\r' '\n' > /tmp/buffer &

while true
sleep 3
do
if pgrep -x "nc" > /dev/null;
then
        python3 metric.py
else
    echo "Transmission has been completed. Stopped."
    rm -f /tmp/buffer
    exit
fi
sleep 2
done
