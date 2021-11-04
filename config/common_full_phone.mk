# Inherit common mobile SSOS stuff
$(call inherit-product, vendor/ssos/config/common.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

$(call inherit-product, vendor/ssos/config/telephony.mk)
