#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Matrixx
MATRIXX_BUILD_TYPE := Official
MATRIXX_MAINTAINER := Pyrtle93
MATRIXX_CHIPSET := TensorG2
MATRIXX_BATTERY := 5000mah
MATRIXX_DISPLAY := 1440x3120

# Matrixx Flags
WITH_GMS := true
TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_PIXEL_FRAMEWORK := true
TARGET_USES_GOOGLE_DIALER_CARRIER_SETTINGS := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_EXCLUDES_AUXIO := true
TARGET_EXCLUDES_VIA := true
TARGET_PIXEL_BOOT_ANIMATION_RES := 1440
TARGET_IS_PIXEL := true
TARGET_IS_PIXEL_7 := true
TARGET_PIXEL_STAND_SUPPORTED := true

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)

include device/google/pantah/cheetah/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_NAME := lineage_cheetah

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=cheetah \
    PRIVATE_BUILD_DESC="cheetah-user 14 UQ1A.240205.002 11224170 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:14/UQ1A.240205.002/11224170:user/release-keys

$(call inherit-product, vendor/google/cheetah/cheetah-vendor.mk)
