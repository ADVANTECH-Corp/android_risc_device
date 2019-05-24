# This is a FSL Android Reference Design platform based on i.MX6Q ARD board
# It will inherit from FSL core product which in turn inherit from Google generic

$(call inherit-product, device/fsl/imx6/imx6.mk)
$(call inherit-product-if-exists,vendor/google/products/gms.mk)

ifneq ($(wildcard device/fsl/rom_7421_a1/fstab_nand.freescale),)
$(shell touch device/fsl/rom_7421_a1/fstab_nand.freescale)
endif

ifneq ($(wildcard device/fsl/rom_7421_a1/fstab.freescale),)
$(shell touch device/fsl/rom_7421_a1/fstab.freescale)
endif

# Overrides
PRODUCT_NAME := rom_7421_a1
PRODUCT_DEVICE := rom_7421_a1

PRODUCT_COPY_FILES += \
	device/fsl/rom_7421_a1/init.rc:root/init.freescale.rc \
        device/fsl/rom_7421_a1/init.i.MX6Q.rc:root/init.freescale.i.MX6Q.rc \
	device/fsl/rom_7421_a1/init.i.MX6QP.rc:root/init.freescale.i.MX6QP.rc \
	device/fsl/rom_7421_a1/audio_policy.conf:system/etc/audio_policy.conf \
	device/fsl/rom_7421_a1/audio_effects.conf:system/vendor/etc/audio_effects.conf

PRODUCT_COPY_FILES +=	\
	external/linux-firmware-imx/firmware/vpu/vpu_fw_imx6d.bin:system/lib/firmware/vpu/vpu_fw_imx6d.bin 	\
	external/linux-firmware-imx/firmware/vpu/vpu_fw_imx6q.bin:system/lib/firmware/vpu/vpu_fw_imx6q.bin

PRODUCT_COPY_FILES +=   \
        device/fsl/rom_7421_a1/update.sh:system/etc/update.sh \
        device/fsl/rom_7421_a1/startup.sh:system/etc/startup.sh \
	device/fsl/rom_7421_a1/advantech.sh:system/bin/advantech.sh \
        device/fsl/rom_7421_a1/cts.sh:system/bin/cts.sh

PRODUCT_COPY_FILES +=   \
        device/fsl/rom_7421_a1/cust/cust_update.zip:system/cust/cust_update.zip \
        device/fsl/rom_7421_a1/cust/cust_sysinit.sh:system/etc/cust_sysinit.sh \
        device/fsl/rom_7421_a1/cust/cust_update.sh:system/etc/cust_update.sh

# ota related file for android
PRODUCT_COPY_FILES += \
	device/fsl/imx6/otaagent-android/libsueclient.so:system/lib/libsueclient.so \
	device/fsl/imx6/otaagent-android/OTA-Agent/agent_config.xml:system/lib/OTA-Agent/agent_config.xml \
	device/fsl/imx6/otaagent-android/OTA-Agent/libSAGeneralHandler.so:system/lib/OTA-Agent/libSAGeneralHandler.so \
	device/fsl/imx6/otaagent-android/OTA-Agent/libSAHandlerLoader.so:system/lib/OTA-Agent/libSAHandlerLoader.so \
	device/fsl/imx6/otaagent-android/OTA-Agent/libSAManager.so:system/lib/OTA-Agent/libSAManager.so \
	device/fsl/imx6/otaagent-android/OTA-Agent/module/libotahandler.so:system/lib/OTA-Agent/module/libotahandler.so \
	device/fsl/imx6/otaagent-android/OTA-Agent/module/module_config.xml:system/lib/OTA-Agent/module/module_config.xml \
	device/fsl/imx6/otaagent-android/OTA-Agent/ota-agent:system/lib/OTA-Agent/ota-agent \
	device/fsl/imx6/otaagent-android/otaup.sh:system/etc/otaup.sh

## add rmm for android
PRODUCT_COPY_FILES += \
	device/fsl/imx6/rmm/module/libOTAHandler.so:system/lib/module/libOTAHandler.so \
	device/fsl/imx6/rmm/module/libServiceHandler.so:system/lib/module/libServiceHandler.so \
	device/fsl/imx6/rmm/module/libMonitoringHandler.so:system/lib/module/libMonitoringHandler.so \
	device/fsl/imx6/rmm/module/libTerminalHandler.so:system/lib/module/libTerminalHandler.so \
	device/fsl/imx6/rmm/module/libPowerOnOffHandler.so:system/lib/module/libPowerOnOffHandler.so \
	device/fsl/imx6/rmm/module/libsueclient.so:system/lib/module/libsueclient.so \
	device/fsl/imx6/rmm/module/libNetMonitorHandler.so:system/lib/module/libNetMonitorHandler.so \
	device/fsl/imx6/rmm/module/libSUSIControlHandler.so:system/lib/module/libSUSIControlHandler.so \
	device/fsl/imx6/rmm/module/libScreenshotHandler.so:system/lib/module/libScreenshotHandler.so \
	device/fsl/imx6/rmm/module/libProcessMonitorHandler.so:system/lib/module/libProcessMonitorHandler.so \
	device/fsl/imx6/rmm/module/libRemoteKVMHandler.so:system/lib/module/libRemoteKVMHandler.so \
	device/fsl/imx6/rmm/module/libDroidRootHandler.so:system/lib/module/libDroidRootHandler.so \
	device/fsl/imx6/rmm/module/module_config.xml:system/lib/module/module_config.xml \
	device/fsl/imx6/rmm/VNC/androidvncserver:system/lib/VNC/androidvncserver \
	device/fsl/imx6/rmm/libEIServiceSDK.so:system/lib/libEIServiceSDK.so \
	device/fsl/imx6/rmm/libEIServiceSDK_RuleEngine.so:system/lib/libEIServiceSDK_RuleEngine.so \
	device/fsl/imx6/rmm/libSAHandlerLoader.so:system/lib/libSAHandlerLoader.so \
	device/fsl/imx6/rmm/libSAGeneralHandler.so:system/lib/libSAGeneralHandler.so \
	device/fsl/imx6/rmm/libDataSync.so:system/lib/libDataSync.so \
	device/fsl/imx6/rmm/DataSync.ini:system/lib/DataSync.ini \
	device/fsl/imx6/rmm/libRuleEngine.so:system/lib/libRuleEngine.so \
	device/fsl/imx6/rmm/libSAManager.so:system/lib/libSAManager.so \
	device/fsl/imx6/rmm/EIServiceConfig.ini:system/bin/EIServiceConfig.ini \
	device/fsl/imx6/rmm/CredentialChecker:system/lib/CredentialChecker \
	device/fsl/imx6/rmm/cagent:system/bin/cagent \
	device/fsl/imx6/rmm/log.ini:system/bin/log.ini \
	device/fsl/imx6/rmm/agent_config.xml:system/bin/agent_config.xml \
	device/fsl/imx6/rmm/netInfo.sh:system/etc/netInfo.sh \
	device/fsl/imx6/rmm/rmm_start.sh:system/bin/rmm_start.sh

# setup dm-verity configs.
ifneq ($(BUILD_TARGET_DEVICE),sd)
 PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/mmcblk2p5
 $(call inherit-product, build/target/product/verity.mk)
else 
 PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/mmcblk2p5
 $(call inherit-product, build/target/product/verity.mk)

endif

# GPU files

DEVICE_PACKAGE_OVERLAYS := device/fsl/rom_7421_a1/overlay

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_AAPT_CONFIG += xlarge large tvdpi hdpi xhdpi

PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
	device/fsl/rom_7421_a1/required_hardware.xml:system/etc/permissions/required_hardware.xml
PRODUCT_PACKAGES += AudioRoute
