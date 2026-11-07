THEOS_PACKAGE_SCHEME ?= rootless

TARGET = iphone:clang:latest:16.0
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AirDropIPAFix
AirDropIPAFix_FILES = Tweak.xm
AirDropIPAFix_FRAMEWORKS = Foundation
AirDropIPAFix_CFLAGS = -fobjc-arc -Wall -Wextra
AirDropIPAFix_LDFLAGS += -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 sharingd"
