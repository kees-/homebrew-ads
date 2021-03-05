class Ads < Formula

  desc "Interactive content utility"
  homepage "https://github.com/kees-/ads"
  url "https://github.com/kees-/ads/archive/v0.%CE%B12.tar.gz"
  version "v0.α2"
  sha256 "d6b06e9800c8bd1262bd8a490b08ea8b01a07af63162dedc4772b9b676724dea"
  license "MIT"

  depends_on "zsh"
  depends_on "gettext"
  depends_on "ffmpeg"

  def install
	bin.install "ads"
	lib.install "lib/ads.conf"
	lib.install "lib/adt.conf"
	lib.install "lib/klib.conf"
	lib.install "lib/q.conf"
	lib.install "lib/template/"
  end

end