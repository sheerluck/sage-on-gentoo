# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{4,5} )
PYTHON_REQ_USE="threads(+)"

inherit distutils-r1 versionator

MY_PV="$(delete_version_separator 3)"
MY_P="${PN}-${MY_PV}"
DESCRIPTION="IPython HTML widgets for Jupyter"
HOMEPAGE="http://ipython.org/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-python/notebook-4.2.0[${PYTHON_USEDEP}]
	"
DEPEND="${RDEPEND}"

S="${WORKDIR}"/${MY_P}
