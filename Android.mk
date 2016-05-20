LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:=ethtool.c ethtool-copy.h internal.h net_tstamp-copy.h rxclass.c


package := `ETHTOOL`
version := `v4.0`

LOCAL_CFLAGS:=-O2 -g

LOCAL_CFLAGS += -DPACKAGE=$(package)
LOCAL_CFLAGS += -DVERSION=$(version)
#LOCAL_CFLAGS+=-DLINUX

LOCAL_MODULE_TAGS := eng

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)

LOCAL_MODULE:=ethtool

# gold in binutils 2.22 will warn about the usage of mktemp
LOCAL_LDFLAGS += -Wl,--no-fatal-warnings

include $(BUILD_EXECUTABLE)
