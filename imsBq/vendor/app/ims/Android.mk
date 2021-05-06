#/******************************************************************************
#*@file Android.mk
#*brief Rules for compiling the source files
#*******************************************************************************/

src_java_ims := src/org/codeaurora/ims
src_java_ims += src/com/qualcomm/ims/vt
src_java_ims += src/com/qualcomm/ims/utils
src_java_ims += src/com/qualcomm/qti/ims/vzw
src_proto := src

LOCAL_PATH:= $(call my-dir)

#$(shell mkdir -p $(TARGET_OUT)/vendor/lib)
#$(shell cp $(LOCAL_PATH)/lib/libimsmedia_jni.so $(TARGET_OUT)/vendor/lib/libimsmedia_jni.so)
#$(shell cp $(LOCAL_PATH)/lib/libimscamera_jni.so $(TARGET_OUT)/vendor/lib/libimscamera_jni.so)
#$(shell mkdir -p $(TARGET_OUT)/system/lib)
#$(shell cp $(LOCAL_PATH)/lib/libimsmedia_jni.so $(TARGET_OUT)/system/lib/libimsmedia_jni.so)
#$(shell cp $(LOCAL_PATH)/lib/libimscamera_jni.so $(TARGET_OUT)/system/lib/libimscamera_jni.so)

# ==========================================================================
# Build the service
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_PACKAGE_NAME := ims
LOCAL_CERTIFICATE := platform
LOCAL_PROGUARD_ENABLED := disabled
LOCAL_MODULE_OWNER := qti
LOCAL_JAVA_LIBRARIES := telephony-common ims-common voip-common qti-vzw-ims-internal
LOCAL_STATIC_JAVA_LIBRARIES := ims-ext-common
LOCAL_PRIVATE_PLATFORM_APIS := true
LOCAL_JNI_SHARED_LIBRARIES := libimsmedia_jni libimscamera_jni

LOCAL_PROPRIETARY_MODULE := true
LOCAL_PROTOC_OPTIMIZE_TYPE := micro

LOCAL_SRC_FILES := $(call all-java-files-under, $(src_java_ims)) \
    $(call all-proto-files-under, $(src_proto))

LOCAL_REQUIRED_MODULES := libimsmedia_jni libimscamera_jni
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_APPS)

include $(BUILD_PACKAGE)

include $(CLEAR_VARS)
LOCAL_MODULE := ims.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
include $(BUILD_PREBUILT)

include $(call all-makefiles-under,$(LOCAL_PATH))

# ==========================================================================

