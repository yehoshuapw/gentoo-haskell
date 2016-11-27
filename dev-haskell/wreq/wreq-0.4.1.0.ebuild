# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.4.6.9999
#hackport: flags: -developer,+doctest

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="An easy-to-use HTTP client library"
HOMEPAGE="http://www.serpentine.com/wreq"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="aws httpbin"

RESTRICT=test # headRedirect: [Failed]

RDEPEND=">=dev-haskell/aeson-0.7.0.3:=[profile?]
	>=dev-haskell/attoparsec-0.11.1.0:=[profile?]
	>=dev-haskell/authenticate-oauth-1.5:=[profile?] <dev-haskell/authenticate-oauth-1.6:=[profile?]
	dev-haskell/base16-bytestring:=[profile?]
	dev-haskell/byteable:=[profile?]
	dev-haskell/case-insensitive:=[profile?]
	dev-haskell/cryptohash:=[profile?]
	>=dev-haskell/exceptions-0.5:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/http-client-0.4.6:=[profile?]
	>=dev-haskell/http-client-tls-0.2:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?]
	>=dev-haskell/lens-4.5:=[profile?]
	dev-haskell/lens-aeson:=[profile?]
	dev-haskell/mime-types:=[profile?]
	>=dev-haskell/psqueues-0.2:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/time-locale-compat:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	httpbin? ( >=dev-haskell/aeson-pretty-0.7.1:=[profile?]
			dev-haskell/base64-bytestring:=[profile?]
			dev-haskell/snap-core:=[profile?]
			>=dev-haskell/snap-server-0.9.4.4:=[profile?]
			dev-haskell/transformers:=[profile?]
			dev-haskell/unix-compat:=[profile?]
			dev-haskell/uuid:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/doctest
		dev-haskell/hunit
		dev-haskell/network-info
		>=dev-haskell/quickcheck-2.7
		dev-haskell/temporary
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit
		dev-haskell/test-framework-quickcheck2
		dev-haskell/vector
		!httpbin? ( >=dev-haskell/aeson-pretty-0.7.1
				dev-haskell/base64-bytestring
				dev-haskell/snap-core
				>=dev-haskell/snap-server-0.9.4.4
				dev-haskell/transformers
				dev-haskell/unix-compat
				dev-haskell/uuid ) )
"

PATCHES=("${FILESDIR}"/${P}-http-client-0.5.patch)

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag aws aws) \
		--flag=-developer \
		--flag=doctest \
		$(cabal_flag httpbin httpbin)
}
