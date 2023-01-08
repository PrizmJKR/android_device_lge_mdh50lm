#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from mdh50lm device
$(call inherit-product, device/lge/mdh50lm/device.mk)

PRODUCT_DEVICE := mdh50lm
PRODUCT_NAME := omni_mdh50lm
PRODUCT_BRAND := lge
PRODUCT_MODEL := LM-Q730
PRODUCT_MANUFACTURER := lge

PRODUCT_GMS_CLIENTID_BASE := android-lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mdh50lm-user 10 QKQ1.200216.002 6762100210201 release-keys"

BUILD_FINGERPRINT := lge/mdh50lm/mdh50lm:10/QKQ1.200216.002/6762100210201:user/release-keys
