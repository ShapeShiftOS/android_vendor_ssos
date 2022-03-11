# World APN list
PRODUCT_PACKAGES += \
    apns-conf.xml

# Telephony packages
PRODUCT_PACKAGES += \
    Stk

# Inherit full common ShapeShiftOS stuff
$(call inherit-product, vendor/ssos/config/common_full.mk)
