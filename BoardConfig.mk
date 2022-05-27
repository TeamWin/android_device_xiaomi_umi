# Copyright (C) 2010 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Inherit from OEM SoC-common
-include $(COMMON_PATH)/BoardConfigCommon.mk

# Prebuilts
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/$(BOARD_KERNEL_IMAGE_NAME)

# Recovery
TW_Y_OFFSET := 90
TW_H_OFFSET := -90

#
# For local builds only
#
# Custom TWRP Versioning
ifneq ($(wildcard device/common/version-info/.),)
    CUSTOM_TWRP_DEVICE_VERSION := 1
endif
#
# end local build flags
#
