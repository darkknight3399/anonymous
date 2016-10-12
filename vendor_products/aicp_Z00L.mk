# Inherit some common AICP stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, vendor/aicp/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/aicp/configs/telephony.mk)

# Inherit device configuration
$(call inherit-product, device/asus/Z00L/full_Z00L.mk)

# Enhanced NFC
$(call inherit-product, vendor/aicp/configs/nfc_enhanced.mk)

DEVICE_PACKAGE_OVERLAYS += device/asus/msm8916-common/overlay
PRODUCT_RUNTIMES := runtime_libart_default

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aicp_Z00L
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_Z00L
PRODUCT_MANUFACTURER := asus
PRODUCT_DEVICE := Z00L
PRODUCT_BUILD_PROP_OVERRIDES += \

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
        DEVICE_MAINTAINERS="AKabhishek (Unofficial)"

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
-include vendor/aicp/configs/bootanimation.mk
