#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15

# Board
TARGET_BOARD_PLATFORM := tegra
TARGET_NO_BOOTLOADER := true

# Binder API version
TARGET_USES_64_BIT_BINDER := true

# Camera shims
ifeq ($(TARGET_TEGRA_CAMERA),nvcamera-t124)
TARGET_LD_SHIM_LIBS += /system/vendor/lib/hw/camera.tegra.so|/system/vendor/lib/libcamera_shim.so
endif

# Graphics
ifeq ($(TARGET_TEGRA_GPU),drm)
TARGET_USES_HWC2 := true
BOARD_USES_DRM_HWCOMPOSER := true
BOARD_GPU_DRIVERS := nouveau
DEVICE_MANIFEST_FILE += device/nvidia/t124-common/t124-drm-manifest.xml
endif

# SELinux
BOARD_SEPOLICY_DIRS += device/nvidia/t124-common/sepolicy

# Zygote whitelist extra paths
ZYGOTE_WHITELIST_PATH_EXTRA := \"/dev/nvhost-ctrl\",\"/dev/nvmap\",

include device/nvidia/tegra-common/BoardConfigTegra.mk
