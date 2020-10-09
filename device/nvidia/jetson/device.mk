$(call inherit-product, device/nvidia/shieldtablet/device.mk)

PRODUCT_CHARACTERISTICS := tv

$(call inherit-product-if-exists, vendor/google/atv/atv-common.mk)

PRODUCT_PACKAGES += \
    android.hardware.tv.cec@1.0-impl \
    android.hardware.tv.input@1.0-impl
