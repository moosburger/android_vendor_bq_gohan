LOCAL_PATH := $(call my-dir)

# Copy files

$(shell cp $(LOCAL_PATH)/system.prop $(TARGET_DEVICE_DIR)/system.prop)
$(shell cp $(LOCAL_PATH)/radio.te $(TARGET_DEVICE_DIR)/sepolicy/system.prop)

include $(call all-makefiles-under, $(LOCAL_PATH))
