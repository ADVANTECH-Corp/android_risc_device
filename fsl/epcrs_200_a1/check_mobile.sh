#!/system/bin/sh

logFile=/data/radiolog.txt
#ttyACM=/dev/ttyACM0
#ttyUSB=/dev/ttyUSB0
echo "check_mobile log" >> /data/radiolog.txt

check_telit()
{
 result=$(lsusb -d 1bc7:0023 | grep -e "1bc7")
 if [ $? -eq 0 ]; then
    echo "Detect telit" >> ${logFile}
        setprop "ril.telit.start" "1"
        setprop "ril.module" "telit"
 else
    echo "Can not Detect telit" >> ${logFile}
 fi
}

check_quectel()
{
 result=$(lsusb -d 05c6:9215 | grep -e "05c6")
 if [ $? -eq 0 ]; then
    echo "Detect quectel_ec20" >> ${logFile}
        setprop "ril.quectel.start" "1"
        setprop "ril.module" "Quectel"
 else
    echo "Can not Detect quectel_ec20" >> ${logFile}
 fi

 result=$(lsusb -d 2c7c:0125 | grep -e "0125")
 if [ $? -eq 0 ]; then
    echo "Detect quectel_ec25" >> ${logFile}
        setprop "ril.quectel.start" "1"
        setprop "ril.module" "Quectel"
 else
    echo "Can not Detect quectel_ec25" >> ${logFile}
 fi
}

check_sierra()
{
 result=$(lsusb -d 1199:68c0 | grep -e "1199")
 if [ $? -eq 0 ]; then
    echo "Detect sierra" >> ${logFile}
 else
    echo "Can not Detect sierra" >> ${logFile}
 fi
}

#check_ttyacm_module()
#{
#   if [ -e ${ttyACM} ] ; then 
#        echo "Detect Telit module: ttyACM" >> ${logFile}
#        setprop "ril.telit.start" "1"
#        setprop "ril.module" "telit"
#   else
#       echo "Can not detect Telit" >> ${logFile}
#   fi
#}
#
#check_ttyusb_module()
#{
#   if [ -e ${ttyUSB} ] ; then 
#        echo "Detect Quectel module: ttyUSB" >> ${logFile}
#        setprop "ril.quectel.start" "1"
#        setprop "ril.module" "Quectel"
#   else
#       echo "Can not detect Quectel" >> ${logFile}
#   fi
#}

sleep 3
check_telit
sleep 3
check_quectel
sleep 3
check_sierra
#sleep 3
#check_ttyacm_module
#sleep 2
#check_ttyusb_module


