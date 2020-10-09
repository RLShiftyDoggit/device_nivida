LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE               := init.cal.rc
LOCAL_MODULE_CLASS         := ETC
LOCAL_SRC_FILES            := init.cal.rc
LOCAL_VENDOR_MODULE        := true
LOCAL_MODULE_RELATIVE_PATH := init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := init.ray_touch.rc
LOCAL_MODULE_CLASS         := ETC
LOCAL_SRC_FILES            := init.ray_touch.rc
LOCAL_VENDOR_MODULE        := true
LOCAL_MODULE_RELATIVE_PATH := init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.recovery.ray_touch.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.recovery.ray_touch.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := init.sharp_touch.rc
LOCAL_MODULE_CLASS         := ETC
LOCAL_SRC_FILES            := init.sharp_touch.rc
LOCAL_VENDOR_MODULE        := true
LOCAL_MODULE_RELATIVE_PATH := init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.recovery.sharp_touch.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.recovery.sharp_touch.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)
