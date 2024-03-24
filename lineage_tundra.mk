#
# Copyright (C) 2024 RisingOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tundra device
$(call inherit-product, device/motorola/tundra/device.mk)

# Inherit common Lineage OS configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := afterlife_tundra
PRODUCT_DEVICE := tundra
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30 fusion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tundra_g-user 13 T1SJ33.117-30-4 6a9b48 release-keys" \
    PRODUCT_NAME=tundra_g

BUILD_FINGERPRINT := motorola/tundra_g/tundra:11/T1SJ33.117-30-4/6a9b48:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-motorola


# RisingOS Flags
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_HAS_UDFPS := true
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_PREBUILT_PIXEL_LAUNCHER := false
RISING_CHIPSET := SD888
RISING_MAINTAINER := Shivam_Ingale
TARGET_USE_PIXEL_FINGERPRINT := true
TARGET_BUILD_APERTURE_CAMERA := true
TARGET_BOOT_ANIMATION_RES := 1080