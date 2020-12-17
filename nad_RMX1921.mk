#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Nusantara stuff
USE_PIXEL_CHARGING := true
NAD_BUILD_TYPE := OFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, packages/apps/NusantaraParts/nadproject.mk)
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)

# Inherit from RMX1921 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)
EXTRA_FOD_ANIMATIONS := true

PRODUCT_BRAND := Realme
PRODUCT_DEVICE := RMX1921
PRODUCT_MANUFACTURER := Realme
PRODUCT_NAME := nad_RMX1921
PRODUCT_MODEL := Realme XT

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="coral-user 11 RP1A.201005.004 6782484 release-keys" \
    PRODUCT_NAME="RMX1921"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/coral/coral:11/RP1A.201005.004/6782484:user/release-keys
