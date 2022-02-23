################################################################################
#
# XIV
#
################################################################################

XIV_VERSION = 0.9
XIV_SITE = https://master.dl.sourceforge.net/project/xiv
XIV_SOURCE = xiv-$(XIV_VERSION).tgz
XIV_LICENSE = GPL-3.0+
XIV_LICENSE_FILES = COPYING
XIV_AUTORECONF = YES
# FBPDF_CONFIG_SCRIPTS = libfoo-config
XIV_DEPENDENCIES = xlib_libX11

$(eval $(autotools-package))
