#!/system/bin/sh

cts_environment()
{
    setprop persist.sys.locale en-US
    settings put secure location_providers_allowed +gps
    sqlite3 /data/system/locksettings.db "UPDATE locksettings SET value = '1' WHERE name = 'lockscreen.disabled'"
    settings put global adb_enabled 1
    settings put global stay_on_while_plugged_in 3
    settings put system time_12_24 12
    settings put global verifier_verify_adb_installs 0
    reboot
}

cts_environment
