COMMON_CONF = apache-credit

CREDIT_ANCHORTEXT = b2evolution Appliance
CREDIT_LOCATION = ~ "^/(?!(plugins/tinymce_plugin))"

include $(FAB_PATH)/common/mk/turnkey/lamp.mk
include $(FAB_PATH)/common/mk/turnkey.mk
