# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="https://github.com/tkit1994/stream-url"
HOMEPAGE="A command line tool to get stream urls written in rust."
SRC_URI="https://github.com/tkit1994/stream-url/releases/download/v${PV}/stream-url-v${PV}.x86_64-unknown-linux-gnu.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dobin ${PN}
}
