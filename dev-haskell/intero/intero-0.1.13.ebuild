# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5

CABAL_FEATURES="bin test-suite"
inherit haskell-cabal

DESCRIPTION="Complete interactive development program for Haskell"
HOMEPAGE="https://github.com/commercialhaskell/intero"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.8:= <=dev-lang/ghc-8.0.1:=
	dev-haskell/ghc-paths:=
	dev-haskell/haskeline:=
	dev-haskell/syb:=
	dev-haskell/transformers:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.14
	test? ( dev-haskell/hspec
		dev-haskell/regex-compat
		dev-haskell/temporary )
"
