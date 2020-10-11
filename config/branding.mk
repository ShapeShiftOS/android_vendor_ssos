BUILD_DATE := $(shell date +%Y%m%d)
BUILD_TIME := $(shell date +%H%M)
# Versioning System
# Use signing keys for only official
ifndef SSOS_BUILD_TYPE
    SSOS_BUILD_TYPE := UNOFFICIAL
endif

# Set all versions
SSOS_BASE_VERSION := 2.0
SSOS_CODENAME := Unstamble
SSOS_PLATFORM_VERSION := 11
SSOS_VERSION := $(TARGET_PRODUCT)-$(SSOS_BASE_VERSION)-$(SSOS_CODENAME)-$(SSOS_BUILD_TYPE)-$(BUILD_DATE)-$(BUILD_TIME)
ROM_FINGERPRINT := ShapeShiftOS/$(PLATFORM_VERSION)/$(SSOS_BUILD_TYPE)/$(BUILD_DATE)$(BUILD_TIME)

# Declare it's a ShapeShiftOS build
SSOS_BUILD := true
