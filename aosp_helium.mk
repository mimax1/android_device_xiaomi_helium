#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_ARCH := arm64
TARGET_DENSITY := xxhdpi

# $(call inherit-product, device/xiaomi/helium/full_helium.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from helium device
$(call inherit-product, device/xiaomi/helium/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/aosp/common.mk)

PRODUCT_NAME := aosp_helium
BOARD_VENDOR := Xiaomi
PRODUCT_DEVICE := helium
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Max
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Xiaomi/helium/helium:6.0.1/MMB29M/V8.2.3.0.MBCCNDL:user/release-keys \
    PRIVATE_BUILD_DESC="helium-user 6.0.1 MMB29M V8.2.3.0.MBCCNDL release-keys"
