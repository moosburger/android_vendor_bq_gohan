LOCAL_PATH := $(call my-dir)

#include $(CLEAR_VARS)
#LOCAL_MODULE := ims
#LOCAL_SRC_FILES := ims.apk
#LOCAL_CERTIFICATE := platform
#LOCAL_MODULE_TAGS := optional
#LOCAL_MODULE_CLASS := APPS
#LOCAL_MODULE_SUFFIX := .apk
#LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_APPS)
#include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := imssettings
LOCAL_SRC_FILES := imssettings.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/app
include $(BUILD_PREBUILT)

# Create links
#$(shell mkdir -p $(TARGET_OUT)/vendor/app/ims/lib/arm; \
#    ln -sf /ims/lib/arm/libimscamera_jni.so \
#	    $(TARGET_OUT)/vendor/app/ims/lib/arm/libimscamera_jni.so)
	    
#$(shell ln -sf /ims/lib/arm/libimsmedia_jni.so \
#	    $(TARGET_OUT)/vendor/app/ims/lib/arm/libimsmedia_jni.so)
