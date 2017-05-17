PRODUCT_COPY_FILES += \
    device/fsl-codec/lib/lib_avi_parser_arm11_elinux.3.0.so:system/lib/lib_avi_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib/lib_aac_dec_v2_arm12_elinux.so:system/lib/lib_aac_dec_v2_arm12_elinux.so \
    device/fsl-codec/lib/lib_aacd_wrap_arm12_elinux_android.so:system/lib/lib_aacd_wrap_arm12_elinux_android.so \
    device/fsl-codec/lib/lib_mp3_dec_v2_arm12_elinux.so:system/lib/lib_mp3_dec_v2_arm12_elinux.so \
    device/fsl-codec/lib/lib_mp3d_wrap_arm12_elinux_android.so:system/lib/lib_mp3d_wrap_arm12_elinux_android.so \
    device/fsl-codec/lib/lib_oggvorbis_dec_v2_arm11_elinux.so:system/lib/lib_oggvorbis_dec_v2_arm11_elinux.so \
    device/fsl-codec/lib/lib_vorbisd_wrap_arm11_elinux_android.so:system/lib/lib_vorbisd_wrap_arm11_elinux_android.so \
    device/fsl-codec/lib/lib_flv_parser_arm11_elinux.3.0.so:system/lib/lib_flv_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib/lib_mkv_parser_arm11_elinux.3.0.so:system/lib/lib_mkv_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib/lib_mp3_parser_v2_arm11_elinux.so:system/lib/lib_mp3_parser_v2_arm11_elinux.so \
    device/fsl-codec/lib/lib_mp4_parser_arm11_elinux.3.0.so:system/lib/lib_mp4_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib/lib_mpg2_parser_arm11_elinux.3.0.so:system/lib/lib_mpg2_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib/lib_ogg_parser_arm11_elinux.3.0.so:system/lib/lib_ogg_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib/lib_amr_parser_arm11_elinux.3.0.so:system/lib/lib_amr_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib/lib_aac_parser_arm11_elinux.3.0.so:system/lib/lib_aac_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib/lib_mp3_parser_arm11_elinux.3.0.so:system/lib/lib_mp3_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib/lib_wav_parser_arm11_elinux.3.0.so:system/lib/lib_wav_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib/lib_flac_parser_arm11_elinux.3.0.so:system/lib/lib_flac_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib/lib_ape_parser_arm11_elinux.3.0.so:system/lib/lib_ape_parser_arm11_elinux.3.0.so

ifdef TARGET_2ND_ARCH
PRODUCT_COPY_FILES += \
    device/fsl-codec/lib64/lib_avi_parser_arm11_elinux.3.0.so:system/lib64/lib_avi_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib64/lib_aac_dec_arm_android.so:system/lib64/lib_aac_dec_v2_arm12_elinux.so \
    device/fsl-codec/lib64/lib_aacd_wrap_arm_android.so:system/lib64/lib_aacd_wrap_arm_android.so \
    device/fsl-codec/lib64/lib_mp3_dec_arm_android.so:system/lib64/lib_mp3_dec_v2_arm12_elinux.so \
    device/fsl-codec/lib64/lib_mp3d_wrap_arm_android.so:system/lib64/lib_mp3d_wrap_arm12_elinux_android.so \
    device/fsl-codec/lib64/lib_oggvorbis_dec_arm_android.so:system/lib64/lib_oggvorbis_dec_v2_arm11_elinux.so \
    device/fsl-codec/lib64/lib_vorbisd_wrap_arm_android.so:system/lib64/lib_vorbisd_wrap_arm11_elinux_android.so \
    device/fsl-codec/lib64/lib_flv_parser_arm11_elinux.3.0.so:system/lib64/lib_flv_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib64/lib_mkv_parser_arm11_elinux.3.0.so:system/lib64/lib_mkv_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib64/lib_mp3_parser_v2_arm11_elinux.so:system/lib64/lib_mp3_parser_v2_arm11_elinux.so \
    device/fsl-codec/lib64/lib_mp4_parser_arm11_elinux.3.0.so:system/lib64/lib_mp4_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib64/lib_mpg2_parser_arm11_elinux.3.0.so:system/lib64/lib_mpg2_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib64/lib_ogg_parser_arm11_elinux.3.0.so:system/lib64/lib_ogg_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib64/lib_amr_parser_arm11_elinux.3.0.so:system/lib64/lib_amr_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib64/lib_aac_parser_arm11_elinux.3.0.so:system/lib64/lib_aac_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib64/lib_mp3_parser_arm11_elinux.3.0.so:system/lib64/lib_mp3_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib64/lib_wav_parser_arm11_elinux.3.0.so:system/lib64/lib_wav_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib64/lib_flac_parser_arm11_elinux.3.0.so:system/lib64/lib_flac_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib64/lib_ape_parser_arm11_elinux.3.0.so:system/lib64/lib_ape_parser_arm11_elinux.3.0.so
endif
