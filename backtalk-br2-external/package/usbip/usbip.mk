USBIP_SITE = $(LINUX_DIR)
USBIP_SITE_METHOD = local
USBIP_SUBDIR = drivers/staging/usbip/userspace
USBIP_AUTORECONF = YES

$(eval $(autotools-package))
