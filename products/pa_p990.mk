# Copyright (C) 2013 ParanoidAndroid Project
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

# Check for target product

ifeq (pa_p990,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := HDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/pa/main.mk

# Inherit device configuration
$(call inherit-product, device/lge/p990/p990.mk)

# Override AOSP build properties
PRODUCT_NAME := pa_p990
PRODUCT_DEVICE := p990
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := lge
PRODUCT_MODEL := LG-P990
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=star_open_eu \
    TARGET_DEVICE=p990 \
    BUILD_FINGERPRINT="lge/star_open_eu/star:4.0.4/IMM76L/LG-P990-P99030a.1211302332:user/release-keys" \
    PRIVATE_BUILD_DESC="star_open_eu-user 4.0.4 IMM76L LG-P990-P99030a.1211302332 release-keys"

endif
