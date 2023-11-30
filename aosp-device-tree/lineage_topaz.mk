#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from topaz device
$(call inherit-product, device/xiaomi/topaz/device.mk)

PRODUCT_DEVICE := topaz
PRODUCT_NAME := lineage_topaz
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := topaz
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="topaz_global-user 13 TKQ1.221114.001 V14.0.7.0.TMGMIXM release-keys"

BUILD_FINGERPRINT := Redmi/topaz_global/topaz:13/TKQ1.221114.001/V14.0.7.0.TMGMIXM:user/release-keys
