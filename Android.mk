ifneq ($(filter b140dl,$(TARGET_DEVICE)),)

LOCAL_PATH := device/blu/b140dl

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
