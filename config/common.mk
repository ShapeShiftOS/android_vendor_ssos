include vendor/ssos/build/core/vendor/*.mk

$(call inherit-product, vendor/google/gms/config.mk)

WITH_GMS := true

ifeq ($(PRODUCT_USES_QCOM_HARDWARE), true)
include vendor/ssos/build/core/ProductConfigQcom.mk
endif

$(call inherit-product, vendor/qcom/opensource/power/power-vendor-board.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

ifeq ($(TARGET_USES_BLUR), true)
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.blurs_are_expensive=1 \
    ro.surface_flinger.supports_background_blur=1
endif

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    keyguard.no_require_sim=true \
    dalvik.vm.debug.alloc=0 \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.com.android.dateformat=MM-dd-yyyy \
    persist.sys.disable_rescue=true \
    ro.build.selinux=1

ifneq ($(AB_OTA_PARTITIONS),)
PRODUCT_COPY_FILES += \
    vendor/ssos/build/tools/backuptool_ab.sh:system/bin/backuptool_ab.sh \
    vendor/ssos/build/tools/backuptool_ab.functions:system/bin/backuptool_ab.functions \
    vendor/ssos/build/tools/backuptool_postinstall.sh:system/bin/backuptool_postinstall.sh
endif

# copy privapp permissions
PRODUCT_COPY_FILES += \
    vendor/ssos/prebuilt/common/etc/permissions/privapp-permissions-ssos-product.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-ssos-product.xml \
    vendor/ssos/prebuilt/common/etc/permissions/privapp-permissions-ssos-system.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-ssos-system.xml \
    vendor/ssos/prebuilt/common/etc/permissions/privapp-permissions-elgoog.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-elgoog.xml

# system mount
PRODUCT_COPY_FILES += \
    vendor/ssos/build/tools/system-mount.sh:install/bin/system-mount.sh

# backuptool
PRODUCT_COPY_FILES += \
    vendor/ssos/build/tools/backuptool.sh:install/bin/backuptool.sh \
    vendor/ssos/build/tools/backuptool.functions:install/bin/backuptool.functions \
    vendor/ssos/build/tools/50-ssos.sh:system/addon.d/50-ssos.sh

# ssos-specific init file
PRODUCT_COPY_FILES += \
    vendor/ssos/prebuilt/common/etc/init.ssos.rc:system/etc/init/init.ssos.rc

# Build ID
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_DISPLAY_ID="$(BUILD_ID)-$(TARGET_BUILD_VARIANT)"

# Packages
include vendor/ssos/config/packages.mk

# Branding
include vendor/ssos/config/branding.mk

# Sounds
include vendor/ssos/config/pixel2-audio_prebuilt.mk

# Bootanimation
include vendor/ssos/config/bootanimation.mk

# Inherit from fonts config
$(call inherit-product, vendor/ssos/config/fonts.mk)

# Overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/ssos/overlay
DEVICE_PACKAGE_OVERLAYS += vendor/ssos/overlay/common

# Inherit from rro_overlays config
$(call inherit-product, vendor/ssos/config/rro_overlays.mk)
