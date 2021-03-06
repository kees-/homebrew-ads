class Ads < Formula

  desc "Interactive content utility"
  homepage "https://github.com/kees-/ads"
  url "https://github.com/kees-/ads/archive/v0.%CE%B13.tar.gz"
  version "v0.α3"
  sha256 "d3cf81968a557f0d12c216b6f2a21c4fb0e9a5afbf1a4c07e1628b51329304d6"
  license "MIT"

  depends_on "zsh"
  depends_on "gettext"
  depends_on "ffmpeg"

  def install
	bin.install "ads"
	inreplace "ads_install", /prfx=;/, "prfx=\"#{prefix}\""
	bin.install "ads_install"
	lib.install "lib/ads.conf"
	lib.install "lib/adt.conf"
	lib.install "lib/klib.conf"
	lib.install "lib/q.conf"
	lib.install "lib/template"
  end

  def caveats
	"\033[43;103m\xe2\x86\x92 Run \033[1mads_install\033[0;43;103m to finish the process and set up your instance.\033[K\n  Don't know how?\n  Just type \033[1mads_install\033[0;43;103m into your command prompt.\033[0m"
  end

end
