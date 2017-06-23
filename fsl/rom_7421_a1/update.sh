#!/system/bin/sh

# OTA package in USB
udisk_fullpath=`getprop sys.update.path`

# OTA package in MMC
mmc_fullpath=/data/OTA/update.zip

# OTA target
ota_fullpath=""

update_package=/cache/update.zip
result_dest=/cache/recovery/command
locale_path=/cache/recovery/last_locale

echo "******************************** OFFLINE OTAPROC ********************************" > /dev/kmsg

if [ -e $udisk_fullpath ]; then
	echo "[USB] OTA package source path : " ${udisk_fullpath} > /dev/kmsg
	ota_fullpath=$udisk_fullpath
elif [ -e $mmc_fullpath ]; then
	echo "[MMC] OTA package source path : " ${mmc_fullpath} > /dev/kmsg
	ota_fullpath=$mmc_fullpath
else
	echo "[ERROR] None OTA package in MMC/USB storage!!!" > /dev/kmsg
	exit -1;
fi

echo "[OTAPROC] target file : " $ota_fullpath > /dev/kmsg

echo "*********************************************************************************" > /dev/kmsg

if [ -e $update_package ]; then
	rm -f $update_package
fi

cp ${ota_fullpath} /cache
mkdir /cache/recovery
echo "--update_package=/cache/update.zip" > ${result_dest}

# temportary solution
echo -n "en_US" > ${locale_path}

# remove the update package
rm -f $ota_fullpath

# reboot to recovery mode for OTA
reboot recovery

