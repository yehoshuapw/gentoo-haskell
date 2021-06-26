# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: +template-haskell

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Representing common recursion patterns as higher-order functions"
HOMEPAGE="https://github.com/ekmett/recursion-schemes/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/base-orphans-0.5.4:=[profile?] <dev-haskell/base-orphans-0.9:=[profile?]
	>=dev-haskell/comonad-4:=[profile?] <dev-haskell/comonad-6:=[profile?]
	>=dev-haskell/data-fix-0.3.0:=[profile?] <dev-haskell/data-fix-0.4:=[profile?]
	>=dev-haskell/free-4:=[profile?] <dev-haskell/free-6:=[profile?]
	>=dev-haskell/th-abstraction-0.4:=[profile?] <dev-haskell/th-abstraction-0.5:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( <dev-haskell/hunit-1.7 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=template-haskell
}