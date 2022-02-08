$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, device/blu/b140dl/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, vendor/cm/config/*.mk)
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

PRODUCT_COPY_FILES += $(LOCAL_PATH)/prebuilt/zImage:kernel
PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := b140dl
PRODUCT_NAME := blu_b140dl
PRODUCT_BRAND := blu
PRODUCT_MODEL := b140dl
PRODUCT_MANUFACTURER := blu


PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=adb,mtp


PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="BLU/B140DL/B140DL:11/RP1A.200720.011/1637325978:user/release-keys" \
    PRIVATE_BUILD_DESC="full_U536-user 11 RP1A.200720.011 544 release-keys"
