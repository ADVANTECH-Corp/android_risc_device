# This is a FSL Android Reference Design platform based on i.MX6Q ARD board
# It will inherit from FSL core product which in turn inherit from Google generic

$(call inherit-product, device/fsl/imx6/imx6.mk)
$(call inherit-product-if-exists,vendor/google/products/gms.mk)

ifneq ($(wildcard device/fsl/rom_3420_a1/fstab_nand.freescale),)
$(shell touch device/fsl/rom_3420_a1/fstab_nand.freescale)
endif

ifneq ($(wildcard device/fsl/rom_3420_a1/fstab.freescale),)
$(shell touch device/fsl/rom_3420_a1/fstab.freescale)
endif

# Overrides
PRODUCT_NAME := rom_3420_a1
PRODUCT_DEVICE := rom_3420_a1

PRODUCT_COPY_FILES += \
	device/fsl/rom_3420_a1/init.rc:root/init.freescale.rc \
        device/fsl/rom_3420_a1/init.i.MX6Q.rc:root/init.freescale.i.MX6Q.rc \
	device/fsl/rom_3420_a1/audio_policy.conf:system/etc/audio_policy.conf \
	device/fsl/rom_3420_a1/audio_effects.conf:system/vendor/etc/audio_effects.conf

PRODUCT_COPY_FILES +=	\
	external/linux-firmware-imx/firmware/vpu/vpu_fw_imx6d.bin:system/lib/firmware/vpu/vpu_fw_imx6d.bin 	\
	external/linux-firmware-imx/firmware/vpu/vpu_fw_imx6q.bin:system/lib/firmware/vpu/vpu_fw_imx6q.bin

PRODUCT_COPY_FILES +=   \
        device/fsl/rom_3420_a1/update.sh:system/etc/update.sh \
        device/fsl/rom_3420_a1/startup.sh:system/etc/startup.sh \
	device/fsl/rom_3420_a1/advantech.sh:system/bin/advantech.sh \
        device/fsl/rom_7421_a1/cts.sh:system/bin/cts.sh

PRODUCT_COPY_FILES +=   \
        device/fsl/rom_3420_a1/cust/cust_update.zip:system/cust/cust_update.zip \
        device/fsl/rom_3420_a1/cust/cust_sysinit.sh:system/etc/cust_sysinit.sh \
        device/fsl/rom_3420_a1/cust/cust_update.sh:system/etc/cust_update.sh

# libs for otasue
PRODUCT_COPY_FILES += \
        device/fsl/imx6/otasue/libcomm.so:system/lib/libcomm.so \
        device/fsl/imx6/otasue/libfileTransfer.so:system/lib/libfileTransfer.so \
        device/fsl/imx6/otasue/libminiUnzip.so:system/lib/libminiUnzip.so \
        device/fsl/imx6/otasue/libotacrypto.so:system/lib/libotacrypto.so \
        device/fsl/imx6/otasue/libpaho-mqtt3c.so:system/lib/libpaho-mqtt3c.so \
        device/fsl/imx6/otasue/libsueClientCore.so:system/lib/libsueClientCore.so \
        device/fsl/imx6/otasue/libsueClient.so:system/lib/libsueClient.so

# libs for otarmm
PRODUCT_COPY_FILES += \
        device/fsl/imx6/otarmm/libAdvCareHelper.so:system/lib/libAdvCareHelper.so \
        device/fsl/imx6/otarmm/libAdvJSON.so:system/lib/libAdvJSON.so \
	device/fsl/imx6/otarmm/libAdvLog.so:system/lib/libAdvLog.so \
	device/fsl/imx6/otarmm/libFTPHelper.so:system/lib/libFTPHelper.so \
	device/fsl/imx6/otarmm/libLog.so:system/lib/libLog.so \
	device/fsl/imx6/otarmm/libMessageGenerator.so:system/lib/libMessageGenerator.so \
	device/fsl/imx6/otarmm/libMQTTHelper.so:system/lib/libMQTTHelper.so \
	device/fsl/imx6/otarmm/libReadINI.so:system/lib/libReadINI.so \
	device/fsl/imx6/otarmm/libRMMPlatform.so:system/lib/libRMMPlatform.so \
	device/fsl/imx6/otarmm/libSAClient.so:system/lib/libSAClient.so \
	device/fsl/imx6/otarmm/libSAConfig.so:system/lib/libSAConfig.so \
	device/fsl/imx6/otarmm/libSAGatherInfo.so:system/lib/libSAGatherInfo.so \
	device/fsl/imx6/otarmm/libSQFlashHelper.so:system/lib/libSQFlashHelper.so \
	device/fsl/imx6/otarmm/libSUSIHelper.so:system/lib/libSUSIHelper.so

# other file for otarmm
PRODUCT_COPY_FILES += \
        device/fsl/imx6/otarmm/agent_config.xml:system/lib/agent_config.xml \
	device/fsl/imx6/otarmm/AgentEncrypt:system/lib/AgentEncrypt \
	device/fsl/imx6/otarmm/cagent:system/lib/cagent \
	device/fsl/imx6/otarmm/libSAGeneralHandler.so:system/lib/libSAGeneralHandler.so \
	device/fsl/imx6/otarmm/libSAHandlerLoader.so:system/lib/libSAHandlerLoader.so \
	device/fsl/imx6/otarmm/libSAManager.so:system/lib/libSAManager.so \
	device/fsl/imx6/otarmm/module/libOTAHandler.so:system/lib/module/libOTAHandler.so \
	device/fsl/imx6/otarmm/module/module_config.xml:system/lib/module/module_config.xml \
	device/fsl/imx6/otarmm/ModuleMerge:system/lib/ModuleMerge \
	device/fsl/imx6/otarmm/otaup.sh:system/etc/otaup.sh \
	device/fsl/imx6/otarmm/servertest:system/bin/servertest \
	device/fsl/imx6/otarmm/sawatchdog:system/lib/sawatchdog 
	

# setup dm-verity configs.
ifneq ($(BUILD_TARGET_DEVICE),sd)
 PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/mmcblk1p5
 $(call inherit-product, build/target/product/verity.mk)
else 
 PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/mmcblk1p5
 $(call inherit-product, build/target/product/verity.mk)

endif

# GPU files

DEVICE_PACKAGE_OVERLAYS := device/fsl/rom_3420_a1/overlay

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_AAPT_CONFIG += xlarge large tvdpi hdpi xhdpi

PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
	device/fsl/rom_3420_a1/required_hardware.xml:system/etc/permissions/required_hardware.xml
PRODUCT_PACKAGES += AudioRoute
