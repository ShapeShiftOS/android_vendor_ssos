include vendor/ssos/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/ssos/config/BoardConfigQcom.mk
endif

include vendor/ssos/config/BoardConfigSoong.mk
