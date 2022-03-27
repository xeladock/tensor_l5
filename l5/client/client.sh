#!/bin/bash
ip=$(cat server_ip)
dd if=/dev/urandom of=/file.tmp bs=1024 count=8000 oflag=direct status=progress |& tee| pv | nc -q 0 $ip 9000

