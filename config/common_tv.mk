# Inherit common Lineage stuff
$(call inherit-product, vendor/ssos/config/common.mk)

# Inherit Lineage atv device tree
$(call inherit-product, device/ssos/atv/lineage_atv.mk)

# AOSP packages
PRODUCT_PACKAGES += \
    LeanbackIME

# Lineage packages
PRODUCT_PACKAGES += \
    LineageCustomizer

PRODUCT_PACKAGE_OVERLAYS += vendor/ssos/overlay/tv
