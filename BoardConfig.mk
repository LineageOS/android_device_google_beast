#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/google/beast

## Bootloader
TARGET_BOOTLOADER_BOARD_NAME := Beast

## DTB
TARGET_DTB_NAME := gxl_sei210_2g

## Kernel modules
TARGET_KERNEL_EXT_MODULES := \
    rtl8822bs:kbuild

## Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1342177280
BOARD_VENDORIMAGE_PARTITION_SIZE := 268435456

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

## Wi-Fi
BOARD_WLAN_DEVICE := realtek
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_rtl
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl
WIFI_DRIVER_SOCKET_IFACE := wlan0

## Include the common tree BoardConfig makefile
include device/amlogic/gx-common/BoardConfigCommon.mk

## Kernel - Appends to gx-common configs
TARGET_KERNEL_CONFIG += beast.config

## Include the proprietary BoardConfig makefile
include vendor/google/beast/BoardConfigVendor.mk
