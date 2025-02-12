# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit mate

DESCRIPTION="MATE indicator applet"
LICENSE="GPL-3 GPL-3+ LGPL-2+ LGPL-3+"
SLOT="0"
KEYWORDS="*"

IUSE=""

COMMON_DEPEND="
	>=dev-libs/libindicator-0.4:3
	>=mate-base/mate-panel-1.17.0
	>=x11-libs/gtk+-3.22:3
"

RDEPEND="${COMMON_DEPEND}
	virtual/libintl
"

BDEPEND="${COMMON_DEPEND}
	>=sys-devel/gettext-0.19.8
	virtual/pkgconfig
"

src_configure() {
	mate_src_configure \
		--with-ubuntu-indicators
}
