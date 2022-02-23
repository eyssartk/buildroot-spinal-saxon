################################################################################
#
# xpdf
#
################################################################################

XPDF_VERSION = 4.03
XPDF_SOURCE = xpdf-$(XPDF_VERSION).tar.gz
XPDF_SITE = https://dl.xpdfreader.com
# XPDF_INSTALL_STAGING = YES
# XPDF_INSTALL_TARGET = NO
# XPDF_CONF_OPTS = -DBUILD_DEMOS=ON
XPDF_CONF_OPTS = -DCMAKE_VERBOSE_MAKEFILE=ON
# XPDF_DEPENDENCIES = libglib2 host-pkgconf
XPDF_DEPENDENCIES = freetype qt5base

# Bug g++: use another riscv-toolchain
# cd /home/eyssartk/Dev/ArtyA7SmpLinux/buildroot-build/build/xpdf-4.03/goo && /opt/riscv32/bin/riscv32-unknown-linux-gnu-g++  --sysroot=/home/eyssartk/Dev/ArtyA7SmpLinux/buildroot-build/per-package/xpdf/host/riscv32-buildroot-linux-gnu/sysroot   -I/home/eyssartk/Dev/ArtyA7SmpLinux/buildroot-build/build/xpdf-4.03  -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -Os -DSYS_futex=SYS_futex_time64 -D__NR_futex=__NR_futex_time64 -O3 -Wall -fPIC   -o CMakeFiles/goo_objs.dir/GString.cc.o -c /home/eyssartk/Dev/ArtyA7SmpLinux/buildroot-build/build/xpdf-4.03/goo/GString.cc

$(eval $(cmake-package))
