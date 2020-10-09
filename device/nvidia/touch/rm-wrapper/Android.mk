LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := rm-wrapper
LOCAL_SRC_FILES := rm-wrapper.c
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_CFLAGS := -fPIE
LOCAL_LDFLAGS := -fPIE -pie -ldl -llog
ifeq ($(TARGET_ARCH),arm64)
LOCAL_LDFLAGS += -Wl,-dynamic-linker,/sbin32/linker
else
LOCAL_LDFLAGS += -Wl,-dynamic-linker,/sbin/linker
endif
LOCAL_C_INCLUDES := bionic/libc/stdio
LOCAL_SHARED_LIBRARIES := libc libdl liblog libm libstdc++
LOCAL_MULTILIB := 32
include $(BUILD_EXECUTABLE)
