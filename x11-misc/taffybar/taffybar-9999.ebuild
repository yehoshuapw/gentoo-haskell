# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="bin lib profile haddock hscolour"
inherit git-2 haskell-cabal

DESCRIPTION="A desktop bar similar to xmobar, but with more GUI"
HOMEPAGE="http://github.com/travitch/taffybar"
SRC_URI=""

EGIT_REPO_URI="git://github.com/travitch/taffybar.git"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS=""
IUSE=""

RDEPEND="dev-haskell/cairo:=[profile?]
		>=dev-haskell/dbus-core-0.9.1:=[profile?]
		<dev-haskell/dbus-core-1.0:=[profile?]
		>=dev-haskell/dyre-0.8.6:=[profile?]
		>=dev-haskell/gtk-0.12.1:=[profile?]
		>=dev-haskell/gtk-traymanager-0.1.2:=[profile?]
		<dev-haskell/gtk-traymanager-0.2:=[profile?]
		dev-haskell/hstringtemplate:=[profile?]
		dev-haskell/http:=[profile?]
		>=dev-haskell/mtl-2:=[profile?]
		dev-haskell/network:=[profile?]
		>=dev-haskell/parsec-3.1:=[profile?]
		dev-haskell/text:=[profile?]
		dev-haskell/time:=[profile?]
		dev-haskell/utf8-string:=[profile?]
		dev-haskell/web-encodings:=[profile?]
		dev-haskell/xdg-basedir:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		x11-libs/gtk+:2
		x11-wm/xmonad:=[profile?]
		x11-wm/xmonad-contrib:=[profile?]"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.10"
RDEPEND+=" sys-apps/dbus
		sys-power/upower"
