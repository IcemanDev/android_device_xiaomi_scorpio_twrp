
# Release name
PRODUCT_RELEASE_NAME := scorpio
DEVICE_PATH := device/xiaomi/scorpio

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := scorpio
PRODUCT_NAME := omni_scorpio
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI Note 2
PRODUCT_MANUFACTURER := Xiaomi

# Integrated root added
$(call inherit-product, $(DEVICE_PATH)/file-root/root.mk)