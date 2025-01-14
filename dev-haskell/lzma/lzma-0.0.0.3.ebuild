# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_HACKAGE_REVISION="7"
CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="LZMA/XZ compression and decompression"
HOMEPAGE="https://github.com/hvr/lzma"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-lang/ghc-8.4.3:=
	app-arch/xz-utils
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.7
		>=dev-haskell/quickcheck-2.8 <dev-haskell/quickcheck-2.15
		>=dev-haskell/tasty-0.10 <dev-haskell/tasty-1.5
		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/tasty-quickcheck-0.8.3.2 <dev-haskell/tasty-quickcheck-0.11 )
"
