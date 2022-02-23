################################################################################
#
# lcms2_2.13
#
################################################################################

LCMS2_2_13_VERSION = 2.13
LCMS2_2_13_SOURCE = lcms2-$(LCMS2_2_13_VERSION).tar.gz
LCMS2_2_13_SITE = http://downloads.sourceforge.net/project/lcms/lcms/$(LCMS2_2_13_VERSION)
LCMS2_2_13_LICENSE = MIT
LCMS2_2_13_LICENSE_FILES = COPYING
LCMS2_2_13_INSTALL_STAGING = YES

ifeq ($(BR2_PACKAGE_JPEG),y)
LCMS2_2_13_CONF_OPTS += --with-jpeg
LCMS2_2_13_DEPENDENCIES += jpeg
else
LCMS2_2_13_CONF_OPTS += --without-jpeg
endif

ifeq ($(BR2_PACKAGE_TIFF),y)
LCMS2_2_13_CONF_OPTS += --with-tiff
LCMS2_2_13_DEPENDENCIES += tiff
else
LCMS2_2_13_CONF_OPTS += --without-tiff
endif

ifeq ($(BR2_PACKAGE_ZLIB),y)
LCMS2_2_13_CONF_OPTS += --with-zlib
LCMS2_2_13_DEPENDENCIES += zlib
else
LCMS2_2_13_CONF_OPTS += --without-zlib
endif

$(eval $(autotools-package))
$(eval $(host-autotools-package))
