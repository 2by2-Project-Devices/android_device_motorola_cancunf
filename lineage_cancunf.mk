#
# Copyright (C) 2024 PixelOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/motorola/cancunf/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := aosp_cancunf
PRODUCT_DEVICE := cancunf
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g54 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=cancunf \
    BuildDesc="cancunf_g_sys-user 14 U1TDS34.94-12-9-10-1 2d53a-f2829 release-keys" \
    BuildFingerprint=motorola/cancunf_g_sys/cancunf:14/U1TDS34.94-12-9-10-1/2d53a-f2829:user/release-keys