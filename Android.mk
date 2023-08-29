LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := poc
LOCAL_CFLAGS += -Iinclude -DBINDER_DEVICE="\"/dev/hwbinder\"" -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=0
LOCAL_SRC_FILES := src/exploit.c src/endpoint.c src/pending_node.c src/binder.c src/log.c src/helpers.c  src/binder_lookup.c src/realloc.c src/node.c
include $(BUILD_EXECUTABLE)


