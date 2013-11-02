
i=0
oldfile=/data/local/logs/kernel/mem_old.txt
newfile=/data/local/logs/kernel/mem_new.txt
while true

i=`busybox expr $i + 1`
do
#busybox date
date>>$newfile
ps -t>>$newfile
for pid in `ps | busybox grep -v root | busybox awk '{if(NR>1) print $2;}' `
 do
   if busybox [ $i -le 30 ]
   then
     name=`ps $pid | busybox awk '{if(NR=2) print $9;}'`
# echo -n "$pid  $name  "
     showmap $pid | busybox grep TOTAL>>$newfile
   else
     showmap $pid>>$newfile
   fi 
 done
     cat /proc/meminfo>>$newfile
     cat /proc/slabinfo>>$newfile
 busybox sleep 180
 if busybox [ $i -le 30 ]
 then
 else
   i=0
   busybox mv $newfile $oldfile
 fi 
done
