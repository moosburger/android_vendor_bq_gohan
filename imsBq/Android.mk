LOCAL_PATH := $(call my-dir)

# Copy files

$(shell cp $(LOCAL_PATH)/system.prop $(TARGET_DEVICE_DIR)/system.prop)
$(shell cp $(LOCAL_PATH)/radio.te $(TARGET_DEVICE_DIR)/sepolicy/system.prop)

#$(shell mkdir -p $(TARGET_OUT)/vendor/lib)
#$(shell cp $(LOCAL_PATH)/vendor/bq/gohan/imsBq/vendor/app/ims/lib/libimsmedia_jni.so $(TARGET_OUT)/vendor/lib/libimsmedia_jni.so)
#$(shell cp $(LOCAL_PATH)/vendor/bq/gohan/imsBq/vendor/app/ims/lib/libimscamera_jni.so $(TARGET_OUT)/vendor/lib/libimscamera_jni.so)
$(shell mkdir -p $(TARGET_OUT)/system/lib)
$(shell cp $(LOCAL_PATH)/vendor/bq/gohan/imsBq/vendor/app/ims/lib/libimsmedia_jni.so $(TARGET_OUT)/system/lib/libimsmedia_jni.so)
$(shell cp $(LOCAL_PATH)/vendor/bq/gohan/imsBq/vendor/app/ims/lib/libimscamera_jni.so $(TARGET_OUT)/system/lib/libimscamera_jni.so)

# ==========================================================================

include $(call all-makefiles-under, $(LOCAL_PATH))
