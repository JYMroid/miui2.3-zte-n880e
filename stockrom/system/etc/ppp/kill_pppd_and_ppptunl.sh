#! /system/bin/sh

echo "kill pppd and ppptunl" >> /data/local/logs/ppptunl.log
busybox killall pppd
busybox killall ppptunl