#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ibiza device
$(call inherit-product, device/motorola/ibiza/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_ibiza
PRODUCT_DEVICE := ibiza
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g50

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="ibiza_retail-user 12 S1RF32.27-25-12-1-2 70ec1-11d177 release-keys" \
    BuildFingerprint=motorola/ibiza_retail/ibiza:12/S1RF32.27-25-12-1-2/70ec1-11d177:user/release-keys \
    DeviceProduct=ibiza
