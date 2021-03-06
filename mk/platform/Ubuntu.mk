#
# Variable definitions for the Ubuntu operating system.
#

OS_FAMILY?=	Debian

# System library directories
ifeq (${MACHINE_ARCH},x86_64)	# 64bits arch
  _syslibdir=$(addprefix lib/,${DEB_HOST_MULTIARCH})
  ifneq (,$(filter 08.04 10.04 10.10 11.04,${OS_VERSION}))
    # older ubuntu uses lib64 even on 64bits systems
    SYSLIBDIR?=	${_syslibdir} lib64
  else
    # newer ubuntu seems to have dropped lib64 on 64bits systems
    SYSLIBDIR?= ${_syslibdir} lib
  endif
endif

include ${ROBOTPKG_DIR}/mk/platform/Debian.mk
