ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
TARGET=iphone:clang:16.2:15.0
else
TARGET=iphone:clang:14.5:13.0
endif
ARCHS=arm64 arm64e

PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Truestcuts
Truestcuts_FILES = Tweak.xm
Truestcuts_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
