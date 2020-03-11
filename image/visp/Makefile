# robotpkg Makefile for:	image/visp
# Created:			10 March 2020
#
PKGREVISION=		1
VERSION=		3.3.0
PKGNAME=		visp-${VERSION}
DISTNAME=		visp-${VERSION}
DISTFILES=		visp-${VERSION}${EXTRACT_SUFX}
DIST_SUBDIR=	visp
CATEGORIES=		image

MAINTAINER=		visp@inria.fr
HOMEPAGE=		https://visp.inria.fr
COMMENT=		Visual Servoing Platform
MASTER_SITES=	https://gforge.inria.fr/frs/download.php/38283/
CONFLICTS+=		visp-[0-9]*
CONFLICTS+=		visp[1-2]-[0-9]*
LICENSE=		gnu-gpl-v2

CONFIGURE_DIRS+=        build
CMAKE_ARG_PATH=         ${WRKSRC}

# external packages support

CMAKE_ARGS+=		-DBUILD_TESTS=OFF
CMAKE_ARGS+=		-DBUILD_DEMOS=OFF
CMAKE_ARGS+=		-DBUILD_EXAMPLES=OFF
CMAKE_ARGS+=		-DBUILD_TUTORIALS=OFF
CMAKE_ARGS+=		-DBUILD_JAVA=OFF
CMAKE_ARGS+=		-DEIGEN_INCLUDE_PATH=${PREFIX.eigen3}/include/eigen3

CMAKE_ARGS+=		-DUSE_OGRE=OFF

CMAKE_ARGS+=        -DCMAKE_INSTALL_LIBDIR:PATH=lib

include ../../archivers/bzip2/depend.mk
include ../../archivers/zlib/depend.mk
include ../../math/eigen3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/libjpeg.mk
include ../../mk/sysdep/libpng.mk
include ../../mk/sysdep/libX11.mk
include ../../mk/language/c.mk
include ../../mk/language/c++11.mk

DEPEND_ABI.opencv += opencv<3

include ../../mk/robotpkg.mk

pre-configure:
	${RUN} ${MKDIR} ${WRKSRC}/build

