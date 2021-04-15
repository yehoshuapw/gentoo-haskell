# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A Testing Framework for Haskell"
HOMEPAGE="https://hspec.github.io/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="~dev-haskell/hspec-core-2.7.10:=[profile?]
	~dev-haskell/hspec-discover-2.7.10:=[profile?]
	>=dev-haskell/hspec-expectations-0.8.2:=[profile?] <dev-haskell/hspec-expectations-0.8.3:=[profile?]
	>=dev-haskell/quickcheck-2.12:2=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
