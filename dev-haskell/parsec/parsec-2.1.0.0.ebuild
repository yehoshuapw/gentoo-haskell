# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock"
CABAL_MIN_VERSION=1.2
inherit haskell-cabal

GHC_PV=6.8.1

DESCRIPTION="Monadic parser combinators"
HOMEPAGE="http://haskell.org/ghc/"
SRC_URI="http://www.haskell.org/ghc/dist/stable/dist/ghc-${GHC_PV}-src-extralibs.tar.bz2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/ghc-6.4"

S="${WORKDIR}/ghc-${GHC_PV}/libraries/${PN}"
