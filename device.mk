#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Bluetooth
BOARD_HAVE_BLUETOOTH_RTK_TV := true
include hardware/realtek/rtkbt/rtkbt.mk

PRODUCT_PACKAGES += \
    BeastBluetoothOverlay

## GMS
ifeq ($(WITH_GMS),true)
GMS_MAKEFILE=gms_minimal.mk
endif

## Init-Files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init-files/init.amlogic.wifi_buildin.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.wifi_buildin.rc

## Kernel Modules
PRODUCT_PACKAGES += \
    8822bs

## Platform
TARGET_AMLOGIC_SOC := gxl

## Inherit from the common tree product makefile
$(call inherit-product, device/amlogic/gx-common/gx.mk)

## Inherit from the proprietary files makefile
$(call inherit-product, vendor/google/beast/beast-vendor.mk)
