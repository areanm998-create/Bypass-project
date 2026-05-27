export TARGET = iphone:clang:latest:14.0
export THEOS_DEVICE_ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Bypass

Bypass_FILES = Tweak.x
Bypass_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/tweak.mk
