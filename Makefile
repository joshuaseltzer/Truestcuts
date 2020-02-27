DEBUG=0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Truestcuts

Truestcuts_FILES = Tweak.xm
Truestcuts_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
