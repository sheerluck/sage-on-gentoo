# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

PYTHON_COMPAT=( python2_7 )
PYTHON_REQ_USE="sqlite"

inherit python-any-r1

MY_P="elliptic_curves-${PV}"

DESCRIPTION="Sage's elliptic curves databases"
HOMEPAGE="http://www.sagemath.org"
SRC_URI="mirror://sagemath/elliptic_curves/${MY_P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux ~x64-macos"
IUSE=""

RESTRICT="mirror"

DEPEND=""
RDEPEND=""

S="${WORKDIR}"/${MY_P}

src_install() {
	SAGE_SHARE="${ED}/usr/share/sage" "${PYTHON}" spkg-install
}
