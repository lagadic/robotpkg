# robotpkg Makefile for:	image/stereopixel-genom
# Created:			Anthony Mallet on Fri, 14 Mar 2008
#

DISTNAME=		stereopixel-genom-1.3
CATEGORIES=		image
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=stereopixel-genom/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS_TRAC}stereopixel-genom

MAINTAINER=		openrobots@laas.fr
#HOMEPAGE=
COMMENT=		Stereo-vision by pixel correlation - GenoM component
LICENSE=		2-clause-bsd

GENOM_MODULE=		stereopixel
NOT_FOR_PLATFORM=

define PKG_OPTION_UNSET.api
  include ../../image/libstereopixel/depend.mk
  include ../../image/libimages3d/depend.mk
  include ../../image/opencv/depend.mk
  DEPEND_ABI.opencv += opencv<3
endef

include ../../image/viam-genom/depend.mk
include ../../architecture/genom/depend.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
