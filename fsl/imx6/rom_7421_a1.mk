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
	device/fsl/rom_7421_a1/init.i.MX6DL.rc:root/init.freescale.i.MX6DL.rc \
	device/fsl/rom_7421_a1/init.i.MX6QP.rc:root/init.freescale.i.MX6QP.rc

# Audio
USE_XML_AUDIO_POLICY_CONF := 1
PRODUCT_COPY_FILES += \
	device/fsl/rom_7421_a1/audio_effects.conf:system/vendor/etc/audio_effects.conf \
	device/fsl/rom_7421_a1/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:system/etc/a2dp_audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:system/etc/r_submix_audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/etc/usb_audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/default_volume_tables.xml:system/etc/default_volume_tables.xml \
	frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:system/etc/audio_policy_volumes.xml \

PRODUCT_COPY_FILES +=	\
	external/linux-firmware-imx/firmware/vpu/vpu_fw_imx6d.bin:system/lib/firmware/vpu/vpu_fw_imx6d.bin 	\
	external/linux-firmware-imx/firmware/vpu/vpu_fw_imx6q.bin:system/lib/firmware/vpu/vpu_fw_imx6q.bin

PRODUCT_COPY_FILES +=   \
        device/fsl/rom_7421_a1/update.sh:system/etc/update.sh \
        device/fsl/rom_7421_a1/startup.sh:system/etc/startup.sh \
	device/fsl/rom_7421_a1/advantech.sh:system/bin/advantech.sh

# setup dm-verity configs.
ifneq ($(BUILD_TARGET_DEVICE),sd)
 PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/mmcblk1p5
 $(call inherit-product, build/target/product/verity.mk)
else 
 PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/mmcblk1p5
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
	device/fsl/rom_7421_a1/check_mobile.sh:/system/bin/check_mobile.sh \
	device/fsl/rom_7421_a1/required_hardware.xml:system/etc/permissions/required_hardware.xml

PRODUCT_COPY_FILES += \
    device/fsl-proprietary/gpu-viv/lib/egl/egl.cfg:system/lib/egl/egl.cfg

PRODUCT_PACKAGES += \
    libEGL_VIVANTE \
    libGLESv1_CM_VIVANTE \
    libGLESv2_VIVANTE \
    gralloc_viv.imx6 \
    hwcomposer_viv.imx6 \
    hwcomposer_fsl.imx6 \
    libGAL \
    libGLSLC \
    libVSC \
    libg2d \
    libgpuhelper
