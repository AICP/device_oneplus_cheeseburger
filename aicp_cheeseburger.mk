#
# Copyright (C) 2017 The LineageOS Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from cheeseburger device
$(call inherit-product, device/oneplus/cheeseburger/device.mk)

# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

PRODUCT_NAME := aicp_cheeseburger
PRODUCT_DEVICE := cheeseburger
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := ONEPLUS A5000

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_SYSTEM_DEVICE := OnePlus5
PRODUCT_SYSTEM_NAME := OnePlus5

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus5 \
    TARGET_PRODUCT=OnePlus5

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus5-user 10 QKQ1.191014.012 2010292059 release-keys"

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="Ali B (eyosen), Carlos Solano (csolanol)"

BUILD_FINGERPRINT := OnePlus/OnePlus5/OnePlus5:10/QKQ1.191014.012/2010292059:user/release-keys

TARGET_VENDOR := oneplus

PRODUCT_OVERRIDE_INFO := true
PRODUCT_OVERRIDE_FINGERPRINT := OnePlus/OnePlus5/OnePlus5:8.1.0/OPM1.171019.011/04110400:user/release-keys
