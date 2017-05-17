LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

include $(BUILD_MULTI_PREBUILT)

ifdef TARGET_2ND_ARCH
include $(CLEAR_VARS)
LOCAL_MODULE := lib_nb_amr_dec_v2_arm9_elinux
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
ifdef TARGET_2ND_ARCH
LOCAL_MULTILIB := both
LOCAL_MODULE_PATH_64 := $(TARGET_OUT)/lib64/
LOCAL_SRC_FILES_64 := ./lib64/lib_nb_amr_dec_arm_android.so
LOCAL_MODULE_PATH_32 := $(TARGET_OUT)/lib/
LOCAL_SRC_FILES_32 := ./lib/lib_nb_amr_dec_v2_arm9_elinux.so
else
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib
LOCAL_SRC_FILES := lib/lib_nb_amr_dec_v2_arm9_elinux.so
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := lib_wb_amr_dec_arm9_elinux
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
ifdef TARGET_2ND_ARCH
LOCAL_MULTILIB := both
LOCAL_MODULE_PATH_64 := $(TARGET_OUT)/lib64/
LOCAL_SRC_FILES_64 := lib64/lib_wb_amr_dec_arm_android.so
LOCAL_MODULE_PATH_32 := $(TARGET_OUT)/lib/
LOCAL_SRC_FILES_32 := lib/lib_wb_amr_dec_arm9_elinux.so
else
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib
LOCAL_SRC_FILES := lib/lib_wb_amr_dec_arm9_elinux.so
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := lib_flac_dec_v2_arm11_elinux
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
ifdef TARGET_2ND_ARCH
LOCAL_MULTILIB := both
LOCAL_MODULE_PATH_64 := $(TARGET_OUT)/lib64/
LOCAL_SRC_FILES_64 := lib64/lib_flac_dec_arm_android.so
LOCAL_MODULE_PATH_32 := $(TARGET_OUT)/lib/
LOCAL_SRC_FILES_32 := lib/lib_flac_dec_v2_arm11_elinux.so
else
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib
LOCAL_SRC_FILES := lib/lib_flac_dec_v2_arm11_elinux.so
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := lib_H263_dec_v2_arm11_elinux
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
ifdef TARGET_2ND_ARCH
LOCAL_MULTILIB := 32
LOCAL_MODULE_PATH_32 := $(TARGET_OUT)/lib/
LOCAL_SRC_FILES_32 := lib/lib_H263_dec_v2_arm11_elinux.so
else
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib
LOCAL_SRC_FILES := lib/lib_H263_dec_v2_arm11_elinux.so
endif
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := lib_mp3_parser_v2_arm11_elinux
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
ifdef TARGET_2ND_ARCH
LOCAL_MULTILIB := both
LOCAL_MODULE_PATH_64 := $(TARGET_OUT)/lib64/
LOCAL_SRC_FILES_64 := lib64/lib_mp3_parser_v2_arm11_elinux.so
LOCAL_MODULE_PATH_32 := $(TARGET_OUT)/lib/
LOCAL_SRC_FILES_32 := lib/lib_mp3_parser_v2_arm11_elinux.so
else
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib
LOCAL_SRC_FILES := lib/lib_mp3_parser_v2_arm11_elinux.so
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libavcodec
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
ifdef TARGET_2ND_ARCH
LOCAL_MULTILIB := both
LOCAL_MODULE_PATH_64 := $(TARGET_OUT)/lib64/
LOCAL_SRC_FILES_64 := lib64/libavcodec.so
LOCAL_MODULE_PATH_32 := $(TARGET_OUT)/lib/
LOCAL_SRC_FILES_32 := lib/libavcodec.so
else
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib
LOCAL_SRC_FILES := lib/libavcodec.so
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libavresample
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
ifdef TARGET_2ND_ARCH
LOCAL_MULTILIB := both
LOCAL_MODULE_PATH_64 := $(TARGET_OUT)/lib64/
LOCAL_SRC_FILES_64 := lib64/libavresample.so
LOCAL_MODULE_PATH_32 := $(TARGET_OUT)/lib/
LOCAL_SRC_FILES_32 := lib/libavresample.so
else
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib
LOCAL_SRC_FILES := lib/libavresample.so
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libavutil
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
ifdef TARGET_2ND_ARCH
LOCAL_MULTILIB := both
LOCAL_MODULE_PATH_64 := $(TARGET_OUT)/lib64/
LOCAL_SRC_FILES_64 := lib64/libavutil.so
LOCAL_MODULE_PATH_32 := $(TARGET_OUT)/lib/
LOCAL_SRC_FILES_32 := lib/libavutil.so
else
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib
LOCAL_SRC_FILES := lib/libavutil.so
endif
include $(BUILD_PREBUILT)
endif
