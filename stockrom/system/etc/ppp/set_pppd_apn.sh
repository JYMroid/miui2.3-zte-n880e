#! /system/bin/sh

echo "set pppd apn" >> /data/local/logs/ppptunl.log

echo $1 > /data/data/zte.com.android.ppptunl/pppd_apn

echo "/system/bin/setprop net.gprs.http-proxy $2" >> /data/local/logs/ppptunl.log

/system/bin/setprop net.gprs.http-proxy "$2"