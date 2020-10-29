# Include common parts
include vendor/ssos/config/common.mk

# Define device is a phone
IS_PHONE := true

# GSM APN list
PRODUCT_COPY_FILES += \
    vendor/ssos/prebuilt/common/etc/apns-conf.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/apns-conf.xml

PRODUCT_COPY_FILES += \
    vendor/ssos/prebuilt/common/etc/selective-spn-conf.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/selective-spn-conf.xml

# SIM Toolkit
PRODUCT_PACKAGES += \
    messaging \
    Stk \
    CellBroadcastReceiver
