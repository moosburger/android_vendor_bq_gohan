# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# gohan-ims.mk

PRODUCT_COPY_FILES += \
    vendor/bq/gohan/imsBq/bin/ims_rtp_daemon:system/bin/ims_rtp_daemon \
    vendor/bq/gohan/imsBq/bin/imscmservice:system/bin/imscmservice \
    vendor/bq/gohan/imsBq/bin/imsdatadaemon:system/bin/imsdatadaemon \
    vendor/bq/gohan/imsBq/bin/imsqmidaemon:system/bin/imsqmidaemon \
    vendor/bq/gohan/imsBq/etc/permissions/imscm.xml:system/etc/permissions/imscm.xml \
    vendor/bq/gohan/imsBq/etc/init/ims.rc:system/etc/init/ims.rc \
    vendor/bq/gohan/imsBq/framework/imscmlibrary.jar:system/framework/imscmlibrary.jar \
    vendor/bq/gohan/imsBq/framework/rcs_service_aidl.jar:system/framework/rcs_service_aidl.jar \
    vendor/bq/gohan/imsBq/framework/rcs_service_api.jar:system/framework/rcs_service_api.jar \
    vendor/bq/gohan/imsBq/framework/rcsimssettings.jar:system/framework/rcsimssettings.jar \
    vendor/bq/gohan/imsBq/framework/rcsservice.jar:system/framework/rcsservice.jar \
    vendor/bq/gohan/imsBq/vendor/app/imssettings/oat/arm/imssettings.odex:system/vendor/app/imssettings/oat/arm/imssettings.odex \
    vendor/bq/gohan/imsBq/vendor/lib/lib-dplmedia.so:system/vendor/lib/lib-dplmedia.so \
    vendor/bq/gohan/imsBq/vendor/lib/lib-ims-rcscmjni.so:system/vendor/lib/lib-ims-rcscmjni.so \
    vendor/bq/gohan/imsBq/vendor/lib/lib-imsSDP.so:system/vendor/lib/lib-imsSDP.so \
    vendor/bq/gohan/imsBq/vendor/lib/lib-imscamera.so:system/vendor/lib/lib-imscamera.so \
    vendor/bq/gohan/imsBq/vendor/lib/lib-imsdpl.so:system/vendor/lib/lib-imsdpl.so \
    vendor/bq/gohan/imsBq/vendor/lib/lib-imsqimf.so:system/vendor/lib/lib-imsqimf.so \
    vendor/bq/gohan/imsBq/vendor/lib/lib-imsrcs.so:system/vendor/lib/lib-imsrcs.so \
    vendor/bq/gohan/imsBq/vendor/lib/lib-imsrcscm.so:system/vendor/lib/lib-imsrcscm.so \
    vendor/bq/gohan/imsBq/vendor/lib/lib-imsrcscmclient.so:system/vendor/lib/lib-imsrcscmclient.so \
    vendor/bq/gohan/imsBq/vendor/lib/lib-imsrcscmservice.so:system/vendor/lib/lib-imsrcscmservice.so \
    vendor/bq/gohan/imsBq/vendor/lib/lib-imss.so:system/vendor/lib/lib-imss.so \
    vendor/bq/gohan/imsBq/vendor/lib/lib-imsvt.so:system/vendor/lib/lib-imsvt.so \
    vendor/bq/gohan/imsBq/vendor/lib/lib-imsxml.so:system/vendor/lib/lib-imsxml.so \
    vendor/bq/gohan/imsBq/vendor/lib/lib-rcsimssjni.so:system/vendor/lib/lib-rcsimssjni.so \
    vendor/bq/gohan/imsBq/vendor/lib/lib-rcsjni.so:system/vendor/lib/lib-rcsjni.so \
    vendor/bq/gohan/imsBq/vendor/lib/lib-rtpcommon.so:system/vendor/lib/lib-rtpcommon.so \
    vendor/bq/gohan/imsBq/vendor/lib/lib-rtpcore.so:system/vendor/lib/lib-rtpcore.so \
    vendor/bq/gohan/imsBq/vendor/lib/lib-rtpdaemoninterface.so:system/vendor/lib/lib-rtpdaemoninterface.so \
    vendor/bq/gohan/imsBq/vendor/lib/lib-rtpsl.so:system/vendor/lib/lib-rtpsl.so \
    vendor/bq/gohan/imsBq/vendor/lib/librcc.so:system/vendor/lib/librcc.so \
    vendor/bq/gohan/imsBq/vendor/lib/libvoice-svc.so:system/vendor/lib/libvoice-svc.so \
    vendor/bq/gohan/imsBq/vendor/lib/libimscamera_jni.so:system/vendor/lib/libimscamera_jni.so \
    vendor/bq/gohan/imsBq/vendor/lib/libimsmedia_jni.so:system/vendor/lib/libimsmedia_jni.so \

PRODUCT_PACKAGES += \
    ims \
    imssettings \
    qti-vzw-ims-internal
    


