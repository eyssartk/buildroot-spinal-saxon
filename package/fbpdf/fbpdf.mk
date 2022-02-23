################################################################################
#
# fbpdf
#
################################################################################

FBPDF_VERSION = ba231d208153341a89c1cb7477156e764e0bc8d8
FBPDF_SITE = $(call github,aligrudi,fbpdf,v$(FOO_VERSION))
FBPDF_LICENSE = GPL-3.0+
FBPDF_LICENSE_FILES = COPYING
FBPDF_INSTALL_STAGING = NO
# FBPDF_CONFIG_SCRIPTS = libfoo-config
FBPDF_DEPENDENCIES = poppler host-pkgconf

define FBPDF_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) fbpdf2
endef

define FBPDF_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/fbpdf2 $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
