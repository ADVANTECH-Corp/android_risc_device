#------------------------------------------------------------------------------
# Copyright (c)2010-2015 Freescale Semiconductor, Inc.
#

ifeq ($(BOARD_WLAN_DEVICE),UNITE)

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

include $(CLEAR_VARS)
LOCAL_MODULE := bcmdhd.cal
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/firmware/bcm
LOCAL_SRC_FILES := bcmdhd.cal
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := wl
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT)/xbin
LOCAL_SRC_FILES := wl
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := 1dx_fw_bcmdhd_mfgtest.bin
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/firmware/bcm/1DX_BCM4343W
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := 1bw_fw_bcmdhd_mfgtest.bin
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/firmware/bcm/1BW_BCM43340
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := sn_fw_bcmdhd_mfgtest.bin
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/firmware/bcm/SN8000_BCM43362
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

endif
