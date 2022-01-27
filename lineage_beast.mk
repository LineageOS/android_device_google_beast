#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common AOSP stuff
$(call inherit-product, device/google/atv/products/atv_base.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_tv.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_DEVICE := beast
PRODUCT_GMS_CLIENTID_BASE := android-google-tv
PRODUCT_MANUFACTURER := Google
PRODUCT_MODEL := ADT-2
PRODUCT_NAME := lineage_beast

PRODUCT_SYSTEM_NAME := adt2
PRODUCT_SYSTEM_DEVICE := adt2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=adt2 \
    PRIVATE_BUILD_DESC="adt2-user 9 PTT5.190307.001 5360859 dev-keys" \
    TARGET_DEVICE=$(PRODUCT_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := google/adt2/adt2:9/PTT5.190307.001/5360859:user/dev-keys
