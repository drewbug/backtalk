################################################################################
#
# scrcpy
#
################################################################################

SCRCPY_VERSION = 1.21
SCRCPY_SITE = $(call github,Genymobile,scrcpy,v$(SCRCPY_VERSION))
SCRCPY_EXTRA_DOWNLOADS=https://github.com/Genymobile/scrcpy/releases/download/v1.21/scrcpy-server-v1.21
SCRCPY_CONF_OPTS = -Dprebuilt_server=$(SCRCPY_DL_DIR)/scrcpy-server-v1.21
SCRCPY_LICENSE = Apache-2.0
SCRCPY_LICENSE_FILES = LICENSE
SCRCPY_DEPENDENCIES = ffmpeg sdl2 libusb

$(eval $(meson-package))
