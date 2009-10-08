# $LAAS: depend.mk 2008/06/17 17:57:51 mallet $
#
# Copyright (c) 2008 LAAS/CNRS
# All rights reserved.
#
# Redistribution  and  use in source   and binary forms,  with or without
# modification, are permitted provided that  the following conditions are
# met:
#
#   1. Redistributions  of  source code must  retain  the above copyright
#      notice and this list of conditions.
#   2. Redistributions in binary form must  reproduce the above copyright
#      notice  and this list of  conditions in the documentation   and/or
#      other materials provided with the distribution.
#
#                                      Arnaud Degroote on Tue May 20 2008
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
GPSNOVATEL_DEPEND_MK:=${GPSNOVATEL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		GPSNovatel
endif

ifeq (+,$(GPSNOVATEL_DEPEND_MK))
PREFER.GPSNovatel?=	robotpkg

DEPEND_USE+=		GPSNovatel

DEPEND_ABI.GPSNovatel?=	GPSNovatel>=1.2
DEPEND_DIR.GPSNovatel?=	../../hardware/GPSNovatel

SYSTEM_SEARCH.GPSNovatel=\
	include/GPSNovatel/GPSNovatel.h \
	lib/pkgconfig/GPSNovatel.pc
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
