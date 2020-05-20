# Include librsjni explicitly to workaround GMS issue
PRODUCT_PACKAGES += \
    librsjni

# Ssos Packages
PRODUCT_PACKAGES += \
    CustomDoze \
    StitchImage \
    ThemePicker \
    PixelThemesStub2019 \
    MatchmakerPrebuilt

# Local Updater
ifneq ($(AB_OTA_PARTITIONS),)
PRODUCT_PACKAGES += \
    LocalUpdater
endif

PRODUCT_PACKAGES += \
     SsosOverlayStub

# Charger images
PRODUCT_PACKAGES += \
    charger_res_images

-include vendor/ssos/config/overlay.mk
