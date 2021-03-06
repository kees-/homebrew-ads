class Ads < Formula

  desc "Interactive content utility"
  homepage "https://github.com/kees-/ads"
  url "https://github.com/kees-/ads/archive/v0.%CE%B17.tar.gz"
  version "v0.α7"
  sha256 "e4550fc92ebfad146d67e5de59dcb96f1058a21053fb3bfcef7501becdaaec91"
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
	lib.install "lib/template"
	system "touch", "#{prefix}/lib/q.conf"
	man.install "ads.1"
  end

  def caveats
	"\033[43;103m\xe2\x86\x92 Run \033[1mads_install\033[0;43;103m to finish the process and set up your instance.\033[K\n  Don't know how?\033[K\n  Just type \033[1mads_install\033[0;43;103m into your command prompt.\033[0m"
  end

end
