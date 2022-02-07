# ShapeShiftOS packages
PRODUCT_PACKAGES += \
    Updater \
    ThemePicker

# Extra tools in ShapeShiftOS
PRODUCT_PACKAGES += \
    7z \
    bash \
    curl \
    getcap \
    htop \
    lib7z \
    libsepol \
    nano \
    pigz \
    setcap \
    unrar \
    vim \
    wget \
    zip

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# rsync
PRODUCT_PACKAGES += \
    rsync

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    product_charger_res_images

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet

# GrapheneOS-Camera
TARGET_BUILD_GRAPHENEOS_CAMERA ?= false
ifeq ($(strip $(TARGET_BUILD_GRAPHENEOS_CAMERA)),true)
PRODUCT_PACKAGES += \
    GrapheneOS-Camera
endif

# AOSP packages
PRODUCT_PACKAGES += \
    ExactCalculator

# Recorder
PRODUCT_PACKAGES += \
    Recorder

# Config
PRODUCT_PACKAGES += \
    SimpleDeviceConfig
