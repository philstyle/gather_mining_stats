#!/bin/bash
RETRY=/tmp/retry_count
RESTART=/var/log/restart.count

if [ ! -e ${RETRY} ]
then
 #make the file
 echo 0 > ${RETRY}
fi

ping -c1 google.com >> /dev/null 2>&1
INTERNETS=$?
#0 if yes, !0 if no

if [ ${INTERNETS} -ne "0" ]
then
 #no internet right now
 #check if we have already retried
 ALREADY=`cat ${RETRY}`
 if [ ${ALREADY} -eq "0" ]
 then
  #set retry file to 1
  echo 1 > ${RETRY}
 else
  #write a timestamp to a file
  echo `date` >> ${RESTART}
  #time to restart
  shutdown -r now #SHUT IT DOWN
 fi

else
 #set retry file to 0
 echo 0 > ${RETRY}
fi
