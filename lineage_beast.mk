#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Not set in time to check, so set before everything else
PRODUCT_IS_ATV := true

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

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="adt2-user 9 PTT5.190307.001 5360859 dev-keys" \
    BuildFingerprint=google/adt2/adt2:9/PTT5.190307.001/5360859:user/dev-keys \
    DeviceName=adt2 \
    DeviceProduct=adt2 \
    SystemDevice=adt2 \
    SystemName=adt2
