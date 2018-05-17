#!/system/bin/sh

logFile=/data/bootCount.tt
adv_hctosys_sleep_time=7200


bootCount()
{

	if [ -e ${logFile} ] ; then 
		logNu=`cat ${logFile}`
		countNu=$((${logNu}+1))
		echo ${countNu} > ${logFile}
	else
		touch ${logFile}
		echo "1" > ${logFile}
	fi
}

adv_hctosys()
{
	echo "adv_hctosys -- sync every " ${adv_hctosys_sleep_time} " seconds"

	while :
	do
		sleep ${adv_hctosys_sleep_time}
		busybox hwclock -s -u
	done
}


bootCount
adv_hctosys
