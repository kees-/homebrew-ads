class Ads < Formula

  desc "Interactive content utility"
  homepage "https://github.com/kees-/ads"
  url "https://github.com/kees-/ads/archive/v0.%CE%B14.tar.gz"
  version "v0.α4"
  sha256 "6bfbf8ae4a500126a94eac174fa8fb9effe210b262c272e2fc93f7309419844d"
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
	"\033[43;103m\xe2\x86\x92 Run \033[1mads_install\033[0;43;103m to finish the process and set up your instance.\033[K\n  Don't know how?\033[K\n  Just type \033[1mads_install\033[0;43;103m into your command prompt.\033[0m"
  end

end
