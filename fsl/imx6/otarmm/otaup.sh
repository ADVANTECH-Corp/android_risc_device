#!/system/bin/sh
OTA_DIR=/cache/otawork
export TMPDIR=/data/local/tmp
if [ ! -d "$OTA_DIR" ]; then
	mkdir -p $OTA_DIR
	cp -rfa  /system/lib/agent_config.xml /cache/
	cp -rfa  /system/lib/AgentEncrypt $OTA_DIR/
	cp -rfa  /system/lib/cagent $OTA_DIR/
	cp -rfa  /system/lib/libSAGeneralHandler.so $OTA_DIR/
	cp -rfa  /system/lib/libSAHandlerLoader.so $OTA_DIR/
	cp -rfa  /system/lib/libSAManager.so $OTA_DIR/
	cp -rfa  /system/lib/module $OTA_DIR/
	cp -rfa  /system/lib/ModuleMerge $OTA_DIR/
	cp -rfa  /system/lib/sawatchdog $OTA_DIR/
	busybox chmod 755 $OTA_DIR/cagent
	cd $OTA_DIR && ./cagent &		
else
	busybox chmod 755 $OTA_DIR/cagent
	cd $OTA_DIR && ./cagent &
fi

