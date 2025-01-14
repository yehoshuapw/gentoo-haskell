# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999
#hackport: flags: +split-these

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Data structures for describing changes to other data structures"
HOMEPAGE="https://obsidian.systems"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/constraints-extras-0.3:=[profile?] <dev-haskell/constraints-extras-0.4:=[profile?]
	>=dev-haskell/dependent-map-0.3:=[profile?] <dev-haskell/dependent-map-0.5:=[profile?]
	>=dev-haskell/dependent-sum-0.6:=[profile?] <dev-haskell/dependent-sum-0.8:=[profile?]
	>=dev-haskell/lens-4.7:=[profile?]
	>=dev-haskell/monoidal-containers-0.6:=[profile?] <dev-haskell/monoidal-containers-0.7:=[profile?]
	>=dev-haskell/semialign-1:=[profile?]
	>=dev-haskell/semigroupoids-4.0:=[profile?] <dev-haskell/semigroupoids-6:=[profile?]
	>=dev-haskell/these-1:=[profile?] <dev-haskell/these-1.2:=[profile?]
	>=dev-haskell/witherable-0.3:=[profile?] <dev-haskell/witherable-0.5:=[profile?]
	>=dev-lang/ghc-8.6.5:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? ( dev-haskell/filemanip
		dev-haskell/hedgehog
		>=dev-haskell/hlint-2.2.2
		dev-haskell/hunit )
"

PATCHES=( "${FILESDIR}/${PN}-0.0.5.2-lens-5.patch" )

src_prepare() {
	default

	cabal_chdeps \
		'lens >= 4.7 && < 5' 'lens >= 4.7' \
		'semialign >=1 && <1.2' 'semialign >=1' \
		'hlint (< 2.1 || >= 2.2.2) && < 3.3' 'hlint >= 2.2.2' \
		'base >= 4.9 && < 4.15' 'base >= 4.9'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=split-these
}
