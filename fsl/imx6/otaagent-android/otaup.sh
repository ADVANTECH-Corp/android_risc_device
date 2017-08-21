#!/system/bin/sh

TARGET_DIR=/data
STORE_DIR=/system/lib/OTA-Agent
OTA_DIR=${TARGET_DIR}/OTA-Agent

if [ ! -d "$OTA_DIR" ]; then
	cp -rfa  $STORE_DIR $TARGET_DIR
fi

busybox chmod 755 $OTA_DIR/ota-agent
cd $OTA_DIR && ./ota-agent &

