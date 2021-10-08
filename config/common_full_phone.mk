# Inherit full common Lineage stuff
$(call inherit-product, vendor/ssos/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Lineage LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/ssos/overlay/dictionaries

$(call inherit-product, vendor/ssos/config/telephony.mk)
