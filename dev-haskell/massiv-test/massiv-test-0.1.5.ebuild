# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Library that contains generators, properties and tests for Massiv Array Library"
HOMEPAGE="https://github.com/lehins/massiv"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # building the test-suite requires more than 8GB of memory

RDEPEND="dev-haskell/data-default-class:=[profile?]
	dev-haskell/exceptions:=[profile?]
	dev-haskell/hspec:=[profile?]
	>=dev-haskell/massiv-0.5.6:=[profile?]
	dev-haskell/primitive:=[profile?]
	dev-haskell/quickcheck:2=[profile?]
	dev-haskell/scheduler:=[profile?]
	dev-haskell/unliftio:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/data-default
		dev-haskell/genvalidity-hspec
		dev-haskell/mwc-random )
"