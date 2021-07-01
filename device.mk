#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/google/beast

$(call inherit-product, vendor/google/beast/beast-vendor.mk)

$(call inherit-product, device/amlogic/gx-common/gx.mk)

## Bluetooth
BOARD_HAVE_BLUETOOTH_RTK_TV := true
include hardware/realtek/rtkbt/rtkbt.mk

## Kernel Modules
PRODUCT_PACKAGES += \
    8822bs

## Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

## Platform
TARGET_AMLOGIC_SOC := gxl
