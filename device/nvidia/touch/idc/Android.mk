LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE       := lr388k7_ts.idc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := lr388k7_ts.idc
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR)/usr/idc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := touch.idc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := touch.idc
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR)/usr/idc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := raydium_ts.idc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := touch.idc
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR)/usr/idc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := sensor00fn11.idc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := sensor00fn11.idc
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR)/usr/idc
include $(BUILD_PREBUILT)
