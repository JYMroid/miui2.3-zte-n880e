#! /system/bin/sh

echo "send signal to ppptunl" >> /data/local/logs/ppptunl.log
busybox killall -10 ppptunl