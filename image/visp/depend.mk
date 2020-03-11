# robotpkg depend.mk for:	image/visp
# Created:			10 March 2020
#
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
VISP_DEPEND_MK:=	${VISP_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		visp
endif

ifeq (+,$(VISP_DEPEND_MK)) # -----------------------------------------------

PREFER.visp?=	  robotpkg

DEPEND_USE+=		visp

DEPEND_ABI.visp?=	visp>=3.3.0
DEPEND_DIR.visp?=	../../image/visp

SYSTEM_SEARCH.visp=\
  'include{,/visp-*}/visp3/core/vpConfig.h'				\
  'lib/pkgconfig/visp{,-[0-9]*}.pc:/Version/s/[^.0-9]//gp'		\
  '{lib/cmake,share,lib}/{VISP,visp}/VISPConfig.cmake'

endif # VISP_DEPEND_MK -----------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
