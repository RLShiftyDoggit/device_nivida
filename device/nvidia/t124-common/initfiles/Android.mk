LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE               := init.t124.rc
LOCAL_MODULE_CLASS         := ETC
LOCAL_SRC_FILES            := init.t124.rc
LOCAL_VENDOR_MODULE        := true
LOCAL_MODULE_RELATIVE_PATH := init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := init.nvgpu_shims.rc
LOCAL_MODULE_CLASS         := ETC
LOCAL_SRC_FILES            := init.nvgpu_shims.rc
LOCAL_VENDOR_MODULE        := true
LOCAL_MODULE_RELATIVE_PATH := init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := ueventd.ardbeg.rc
LOCAL_MODULE_STEM  := ueventd.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := ueventd.ardbeg.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR)
include $(BUILD_PREBUILT)
