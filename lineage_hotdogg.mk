#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, build/target/product/embedded.mk)
# Inherit from our custom product configuration
$(call inherit-product, vendor/lineage/config/common.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hotdog device
$(call inherit-product, device/oneplus/hotdogg/device.mk)

# Inherit some common Lineage stuff.
#$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_hotdogg
PRODUCT_DEVICE := hotdogg
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := HD1925
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=OnePlus7TProNR \
    BUILD_PRODUCT=OnePlus7TProNR \
    TARGET_DEVICE=OnePlus7TProNR

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.model \
    ro.product.device \
    ro.product.name \
    ro.build.product \
    ro.display.series

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
