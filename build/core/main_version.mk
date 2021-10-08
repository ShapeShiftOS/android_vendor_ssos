# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# ShapeShiftOS Platform Display Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.ssos.display.version=$(SSOS_DISPLAY_VERSION) \
    ro.ssos.build.version=$(SSOS_BUILD_VERSION) \
    ro.ssos.build.date=$(BUILD_DATE) \
    ro.ssos.buildtype=$(SSOS_BUILD_TYPE) \
    ro.ssos.fingerprint=$(ROM_FINGERPRINT) \
    ro.ssos.version=$(SSOS_VERSION) \
    ro.modversion=$(SSOS_VERSION)
