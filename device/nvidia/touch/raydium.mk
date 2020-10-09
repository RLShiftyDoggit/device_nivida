#
# Copyright (C) 2019 The LineageOS Project
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

TARGET_TEGRA_TOUCH += raydium

PRODUCT_PACKAGES += init.cal.rc \
		    init.ray_touch.rc \
		    init.recovery.ray_touch.rc

# Input Device Configuration
PRODUCT_PACKAGES += \
    touch.idc \
    raydium_ts.idc \
    sensor00fn11.idc

TARGET_RECOVERY_DEVICE_MODULES := rm-wrapper

# Raydium userspace is 32-bit, need to explicitly include the libs for recovery when 64-bit
ifeq ($(TARGET_ARCH),arm64)
	PRODUCT_PACKAGES += linker.recovery32 \
	                    libc.recovery32 \
	                    libdl.recovery32 \
	                    liblog.recovery32 \
	                    libm.recovery32 \
	                    libc++.recovery32 \
	                    libstdc++.recovery32
endif
