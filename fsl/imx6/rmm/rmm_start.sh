#!/system/bin/sh
#./mymosquitto -d  -c /cache/rmm/mosquitto.conf
mount -o remount,rw /system
chmod 755 /system/lib/CredentialChecker
chmod 755 /system/lib/VNC/androidvncserver
chown root:shell /system/lib/VNC/androidvncserver
echo "start cagent"
cd /system/bin/
./cagent &
cd /

