BUILD_DATE := $(shell date +%Y%m%d)
BUILD_TIME := $(shell date +%H%M)
# Versioning System
# Use signing keys for only official
ifndef SSOS_BUILD_TYPE
    SSOS_BUILD_TYPE := UNOFFICIAL
endif

# Set all versions
SSOS_BASE_VERSION := 1.0
SSOS_PLATFORM_VERSION := 11
SSOS_VERSION := $(TARGET_PRODUCT)-$(BUILD_DATE)-$(BUILD_TIME)-$(SSOS_PLATFORM_VERSION)-$(SSOS_BASE_VERSION)-$(SSOS_BUILD_TYPE)
ROM_FINGERPRINT := ShapeShiftOS/$(PLATFORM_VERSION)/$(SSOS_BUILD_TYPE)/$(BUILD_DATE)$(BUILD_TIME)

# Declare it's a ShapeShiftOS build
SSOS_BUILD := true
