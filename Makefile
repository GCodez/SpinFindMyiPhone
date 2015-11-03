ARCHS = armv7 arm64
include theos/makefiles/common.mk

TWEAK_NAME = SpinFindMyiPhone
SpinFindMyiPhone_FILES = Tweak.xm
SpinFindMyiPhone_FRAMEWORKS = UIKit Foundation CoreGraphics QuartzCore
SpinFindMyiPhone_CFLAGS = -Wno-error
export GO_EASY_ON_ME := 1
include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += SpinFindMyiPhoneSettings
include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	install.exec "killall -9 backboardd"
