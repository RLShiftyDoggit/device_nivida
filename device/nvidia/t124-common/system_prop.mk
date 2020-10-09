# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.resampler.quality=7 \
    af.fast_downmix=1 \
    media.aac_51_output_enabled=1 \
    ro.af.client_heap_size_kbyte=8192 \
    ro.audio.usb.period_us=5000

# Graphics
ifeq ($(TARGET_TEGRA_GPU),drm)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196610 \
    ro.hardware.gralloc=gbm \
    ro.hardware.hwcomposer=drm \
    gralloc.gbm.device=/dev/dri/renderD129 \
    hwc.drm.device=/dev/dri/card1
endif

# Input
PRODUCT_PROPERTY_OVERRIDES += \
    ro.input.noresample=1
