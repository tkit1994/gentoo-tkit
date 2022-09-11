# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A plugin manager for Fish."
HOMEPAGE="https://github.com/jorgebucaran/fisher"
SRC_URI="https://github.com/jorgebucaran/fisher/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"

DEPEND="
	app-shells/fish
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	insinto "/usr/share/fish/vendor_functions.d"
	doins "functions/fisher.fish"
	insinto "/usr/share/fish/vendor_completions.d"
	doins "completions/fisher.fish"
	dodoc "README.md"
}
