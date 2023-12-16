#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/google/beast

## Bootloader
TARGET_BOOTLOADER_BOARD_NAME := Beast

## DTB
TARGET_DTB_NAME := gxl_sei210_2g

## GPU
TARGET_AMLOGIC_GPU_ARCH := utgard

## Kernel
BOARD_KERNEL_CMDLINE += androidboot.boot_devices=d0074000.emmc

## Kernel modules
TARGET_KERNEL_EXT_MODULES := \
    rtl8822bs

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

## Wi-Fi
BOARD_WLAN_DEVICE := realtek
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_rtl
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl
WIFI_DRIVER_SOCKET_IFACE := wlan0
PRODUCT_CFI_INCLUDE_PATHS += hardware/realtek/wlan/wpa_supplicant_8_lib

## Include the common tree BoardConfig makefile
include device/amlogic/gx-common/BoardConfigCommon.mk

## Include the proprietary BoardConfig makefile
include vendor/google/beast/BoardConfigVendor.mk
