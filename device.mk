#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/google/beast

$(call inherit-product, vendor/google/beast/beast-vendor.mk)

$(call inherit-product, device/amlogic/gx-common/gx.mk)

## Platform
TARGET_AMLOGIC_SOC := gxl
