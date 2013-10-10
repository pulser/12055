LOCAL_PATH:= $(call my-dir)

SINGLE_MODULE_TAGS := optional
SINGLE_CERTIFICATE := PRESIGNED
SINGLE_TARGET := 

copy_from := $(patsubst ./%,%, \
  $(shell cd $(LOCAL_PATH) ; \
          find . -maxdepth 1 -name "*.apk" -and -not -name ".*") \
 )

$(foreach SINGLE_TARGET, $(copy_from), $(eval include $(LOCAL_PATH)/single.mk))

include $(call all-makefiles-under,$(LOCAL_PATH))