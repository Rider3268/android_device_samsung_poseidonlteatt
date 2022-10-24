#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from poseidonlteatt device
$(call inherit-product, device/samsung/poseidonlteatt/device.mk)

PRODUCT_DEVICE := poseidonlteatt
PRODUCT_NAME := omni_poseidonlteatt
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SAMSUNG-SM-G891A
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="poseidonlteuc-user 8.0.0 R16NW G891AUCU6CTB1 release-keys"

BUILD_FINGERPRINT := samsung/poseidonlteuc/poseidonlteatt:8.0.0/R16NW/G891AUCU6CTB1:user/release-keys
