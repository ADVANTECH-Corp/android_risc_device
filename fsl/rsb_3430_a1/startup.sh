#!/system/bin/sh

udisk_fullpath=`getprop sys.startup.path`

echo "******************************** STARTUP SERVICE *********************************" > /dev/kmsg

if [ -e $udisk_fullpath ]; then
	echo "[I] startup service script path : " ${udisk_fullpath} > /dev/kmsg
else
	echo "[E] startup service failed ,there is no script file in USB disk!!!" ${udisk_fullpath} > /dev/kmsg
	exit -1;
fi

echo "**********************************************************************************" > /dev/kmsg

# execute the start up script
source $udisk_fullpath
