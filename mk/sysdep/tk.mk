# $LAAS: tk.mk 2008/11/04 22:30:19 tho $
#
# Copyright (c) 2008 LAAS/CNRS
# All rights reserved.
#
# Redistribution and use  in source  and binary  forms,  with or without
# modification, are permitted provided that the following conditions are
# met:
#
#   1. Redistributions of  source  code must retain the  above copyright
#      notice and this list of conditions.
#   2. Redistributions in binary form must reproduce the above copyright
#      notice and  this list of  conditions in the  documentation and/or
#      other materials provided with the distribution.
#
#                                      Anthony Mallet on Thu Oct 23 2008
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
TK_DEPEND_MK:=		${TK_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		tk
endif

ifeq (+,$(TK_DEPEND_MK)) # -------------------------------------------

PREFER.tk?=		system

DEPEND_USE+=		tk

DEPEND_ABI.tk?=		tk>=8.0

SYSTEM_SEARCH.tk=	\
	'bin/wish'							\
	'lib/{,tk{,[0-9]*}/}tkConfig.sh:/TK_VERSION/s/[^.0-9]*//gp'	\
	'include/{,tk{,[0-9]*}/}tk.h:/TK_VERSION/s/[^.0-9]*//gp'

TK_CONFIG_SH=		$(word 2,${SYSTEM_FILES.tk})

endif # TK_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
