#!/bin/bash
nc -q 0 -l 9000 |& unbuffer -p tr '\r' '\n' > /tmp/buffer &

while true
sleep 1
check=$(cat /tmp/buffer | tail -n 1)
do
if pgrep -x "nc" > /dev/null;
then
        echo "Getting a data from client. Running."
        echo $check
else
    echo "Transmission has been completed. Stopped."
    rm -f /tmp/buffer
    exit
fi
sleep 4
done
