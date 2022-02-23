################################################################################
#
# mupdf
#
################################################################################

MUPDF_VERSION = 1.19.0
MUPDF_SITE = https://github.com/ArtifexSoftware/mupdf.git
MUPDF_SITE_METHOD = git
MUPDF_GIT_SUBMODULES = YES
MUPDF_LICENSE_FILES = COPYING
MUPDF_INSTALL_STAGING = YES
# MUPDF_CONFIG_SCRIPTS = libfoo-config
MUPDF_DEPENDENCIES = harfbuzz jbig2dec libjpeg openjpeg libzlib host-pkgconf freetype

define MUPDF_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -j1 verbose=yes USE_SYSTEM_LIBS=yes HAVE_GLUT=no -C $(@D) 
endef

define MUPDF_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/fbpdf2 $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
