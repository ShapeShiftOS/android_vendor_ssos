# Include librsjni explicitly to workaround GMS issue
PRODUCT_PACKAGES += \
    librsjni

# Extra tools
PRODUCT_PACKAGES += \
    7z \
    bash \
    bzip2 \
    curl \
    getcap \
    e2fsck \
    fsck.ntfs \
    gdbserver \
    htop \
    lib7z \
    libsepol \
    micro_bench \
    mke2fs \
    mkfs.ntfs \
    mount.ntfs \
    nano \
    openvpn \
    oprofiled \
    pigz \
    powertop \
    setcap \
    sqlite3 \
    strace \
    tune2fs \
    unrar \
    unzip \
    vim \
    wget \
    zip

# Exchange support
PRODUCT_PACKAGES += \
    Exchange2

# Filesystems tools
PRODUCT_PACKAGES += \
    fsck.exfat \
    fsck.ntfs \
    mke2fs \
    mkfs.exfat \
    mkfs.ntfs \
    mount.ntfs

# rsync
PRODUCT_PACKAGES += \
    rsync

# Overlays
PRODUCT_PACKAGES += \
    GesturalNavigationOverlayLong \
    GesturalNavigationOverlayMedium

# Ssos Packages
PRODUCT_PACKAGES += \
    ThemePicker \
    QuickAccessWallet

# Local Updater
ifneq ($(AB_OTA_PARTITIONS),)
PRODUCT_PACKAGES += \
    LocalUpdater
endif

# Packages
PRODUCT_PACKAGES += \
    ShapeShiftThemesStub

# Charger images
PRODUCT_PACKAGES += \
    charger_res_images

-include vendor/ssos/config/overlay.mk
