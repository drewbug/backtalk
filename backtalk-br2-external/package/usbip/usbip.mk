USBIP_SITE = $(USBIP_PKGDIR)/src
USBIP_SITE_METHOD = local
USBIP_AUTORECONF = YES

$(eval $(autotools-package))
