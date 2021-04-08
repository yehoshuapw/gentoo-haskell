# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: -production,-android,-androidsplice,-testsuite

CABAL_FEATURES=""
inherit haskell-cabal bash-completion-r1 desktop

DESCRIPTION="manage files with git, without checking their contents into git"
HOMEPAGE="https://git-annex.branchable.com/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux"
IUSE="+assistant benchmark +dbus debuglocks doc +gitlfs +httpclientrestricted +magicmime +networkbsd +pairing +torrentparser +webapp"

RESTRICT=test

RDEPEND="dev-haskell/aeson:=
	dev-haskell/async:=
	>=dev-haskell/attoparsec-0.13.2.2:=
	>=dev-haskell/aws-0.20:=
	>=dev-haskell/bloomfilter-2.0.0:=
	dev-haskell/byteable:=
	dev-haskell/case-insensitive:=
	>=dev-haskell/concurrent-output-1.10:=
	dev-haskell/conduit:=
	>=dev-haskell/connection-0.2.6:=
	dev-haskell/crypto-api:=
	>=dev-haskell/cryptonite-0.23:=
	dev-haskell/data-default:=
	>=dev-haskell/dav-1.0:=
	dev-haskell/disk-free-space:=
	dev-haskell/dlist:=
	dev-haskell/edit-distance:=
	>=dev-haskell/exceptions-0.6:=
	>=dev-haskell/feed-1.0.0:=
	>=dev-haskell/filepath-bytestring-1.4.2.1.1:=
	dev-haskell/free:=
	dev-haskell/hslogger:=
	>=dev-haskell/http-client-0.5.3:=
	dev-haskell/http-client-tls:=
	>=dev-haskell/http-conduit-2.3.0:=
	>=dev-haskell/http-types-0.7:=
	dev-haskell/ifelse:=
	dev-haskell/memory:=
	dev-haskell/microlens:=
	dev-haskell/monad-control:=
	dev-haskell/monad-logger:=
	>=dev-haskell/mtl-2:=
	>=dev-haskell/network-uri-2.6:=
	dev-haskell/old-locale:=
	>=dev-haskell/optparse-applicative-0.14.1:=
	>=dev-haskell/persistent-2.12:=
	>=dev-haskell/persistent-sqlite-2.8.1:=
	dev-haskell/persistent-template:=
	>=dev-haskell/quickcheck-2.10.0:2=
	dev-haskell/random:=
	dev-haskell/regex-tdfa:=
	dev-haskell/resourcet:=
	dev-haskell/safesemaphore:=
	dev-haskell/sandi:=
	dev-haskell/securemem:=
	dev-haskell/socks:=
	dev-haskell/split:=
	>=dev-haskell/stm-2.3:=
	dev-haskell/stm-chans:=
	dev-haskell/tagsoup:=
	>=dev-haskell/tasty-0.7:=
	dev-haskell/tasty-hunit:=
	dev-haskell/tasty-quickcheck:=
	dev-haskell/tasty-rerun:=
	dev-haskell/text:=
	>=dev-haskell/unix-compat-0.5:=
	dev-haskell/unliftio-core:=
	dev-haskell/unordered-containers:=
	dev-haskell/utf8-string:=
	>=dev-haskell/uuid-1.2.6:=
	dev-haskell/vector:=
	>=dev-lang/ghc-8.4.3:=
	assistant? ( >=dev-haskell/hinotify-0.3.10:=
			dev-haskell/mountpoints:= )
	benchmark? ( dev-haskell/criterion:= )
	dbus? ( >=dev-haskell/dbus-0.10.7:=
		>=dev-haskell/fdo-notify-0.3:= )
	gitlfs? ( >=dev-haskell/git-lfs-1.1.0:= )
	httpclientrestricted? ( >=dev-haskell/http-client-restricted-0.0.2:= )
	magicmime? ( dev-haskell/magic:= )
	networkbsd? ( >=dev-haskell/network-3.0.0.0:=
			dev-haskell/network-bsd:= )
	!networkbsd? ( >=dev-haskell/network-2.6.3.0:= <dev-haskell/network-3.0.0.0:= )
	pairing? ( dev-haskell/network-info:=
			dev-haskell/network-multicast:= )
	torrentparser? ( >=dev-haskell/torrent-10000.0.0:= )
	webapp? ( dev-haskell/blaze-builder:=
			dev-haskell/clientsession:=
			>=dev-haskell/path-pieces-0.2.1:=
			>=dev-haskell/shakespeare-2.0.11:=
			dev-haskell/wai:=
			dev-haskell/wai-extra:=
			>=dev-haskell/warp-3.2.8:=
			>=dev-haskell/warp-tls-3.2.2:=
			>=dev-haskell/yesod-1.4.3:=
			>=dev-haskell/yesod-core-1.6.0:=
			>=dev-haskell/yesod-form-1.4.8:=
			>=dev-haskell/yesod-static-1.5.1:= )
"
# not generated by hackport:
RDEPEND+=" dev-vcs/git
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	>=dev-haskell/filepath-bytestring-1.4.2.1.4
"
# not generated by hackport:
DEPEND+=" dev-lang/perl
	doc? ( www-apps/ikiwiki net-misc/rsync )
"

PATCHES=("${FILESDIR}"/${PN}-8.20210330-persistent-2.12.patch)

src_configure() {
	haskell-cabal_src_configure \
		--flag=-android \
		--flag=-androidsplice \
		$(cabal_flag assistant assistant) \
		$(cabal_flag benchmark benchmark) \
		$(cabal_flag dbus dbus) \
		$(cabal_flag debuglocks debuglocks) \
		$(cabal_flag gitlfs gitlfs) \
		$(cabal_flag httpclientrestricted httpclientrestricted) \
		$(cabal_flag magicmime magicmime) \
		$(cabal_flag networkbsd networkbsd) \
		$(cabal_flag pairing pairing) \
		--flag=-production \
		--flag=-testsuite \
		$(cabal_flag torrentparser torrentparser) \
		$(cabal_flag webapp webapp)
}

src_install() {
	haskell-cabal_src_install

	newbashcomp "${FILESDIR}"/${PN}.bash ${PN}

	dodoc CHANGELOG README
	if use webapp ; then
		doicon "${FILESDIR}"/${PN}.xpm
		make_desktop_entry "${PN} webapp" "git-annex" ${PN}.xpm "Office"
	fi
}
