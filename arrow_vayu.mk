#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Arrow stuff.
$(call inherit-product, vendor/arrow/config/common.mk)
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from vayu device
$(call inherit-product, device/xiaomi/vayu/device.mk)

# ArrowOS additions.
TARGET_FACE_UNLOCK_SUPPORTED := true
DEVICE_MAINTAINER := Moonlxgt0909 (MUHAMAD KHOIRON)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := arrow_vayu
PRODUCT_DEVICE := vayu
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X3 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vayu_global-user 13 RKQ1.200826.002 V14.0.3.0.TJUMIXM release-keys"

BUILD_FINGERPRINT := POCO/vayu_global/vayu:13/RKQ1.200826.002/V14.0.3.0.TJUMIXM:user/release-keys
