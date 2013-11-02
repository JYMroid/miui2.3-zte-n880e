#!/system/bin/sh

DEFAULT_TIME_FLAG=/data/local/default_time_set
LOG_FILE=/data/local/time.log
NOW=`/system/bin/busybox date +%Y%m%d%H%M%S`

echo "**** settime.sh start ****" > $LOG_FILE
#if /system/bin/[ -f $DEFAULT_TIME_FLAG ] ; then
#        echo "-f : file exist" >> $LOG_FILE
#fi

if /system/bin/[ -e $DEFAULT_TIME_FLAG ] ; then
	echo "-e : file exist! No need to set time at this time" >> $LOG_FILE
	echo "NOW=$NOW" >> $LOG_FILE
	if /system/bin/[ $NOW -lt "20120106080000" ] ; then
		echo "-lt : $NOW -lt 20120106080000 , true" >> $LOG_FILE
		echo "file exist , but time is still smaller than 20120106080000" >> $LOG_FILE
		/system/bin/date -s "20120106.080000" >> $LOG_FILE
	else
		echo "-lt : $NOW -lt 20120106080000 , false" >> $LOG_FILE
		echo "file exist , and time is bigger than 20120106080000" >> $LOG_FILE
	fi
else
	/system/bin/ls -l /data/local >> $LOG_FILE
        /system/bin/date -s "20120106.080000" >> $LOG_FILE
	/system/bin/busybox touch $DEFAULT_TIME_FLAG
        echo "Set time to 2012-01-06 08:00:00" >> $LOG_FILE
fi
echo "**** settime.sh end ****" >> $LOG_FILE




