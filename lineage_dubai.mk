#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from dubai device
$(call inherit-product, device/motorola/dubai/device.mk)

## risingOS-Flags

# Ship Basic Call Recorder
TARGET_PREBUILT_BCR := true

# Addons
TARGET_HAS_UDFPS := true

# Gms 
WITH_GMS := true

TARGET_CORE_GMS := true

TARGET_CORE_GMS_EXTRAS := true

# Ship Pixel Launcher
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Lawnchair Prebuilt
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_dubai
PRODUCT_DEVICE := dubai
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="dubai_g-user 14 U1RD34.80-40 f0ea3-81bef release-keys" \
    BuildFingerprint=motorola/dubai_g/dubai:14/U1RD34.80-40/f0ea3-81bef:user/release-keys \
    DeviceProduct=dubai_g \
    RisingMaintainer="Rakhshan" \
    RisingChipset="SD 778G+"
    
