class Ads < Formula

  desc "Interactive content utility"
  homepage "https://github.com/kees-/ads"
  url "https://github.com/kees-/ads/archive/v0.%CE%B12.tar.gz"
  version "v0.α2"
  sha256 "8a70b2847e115b89ab2f2ae174dc5e31b5bd8c2d0d7e3c8edd7773a9a3f934b0"
  license "MIT"

  depends_on "zsh"
  depends_on "gettext"
  depends_on "ffmpeg"

  def install
	bin.install "ads"
	bin.install "ads_install"
	lib.install "lib/ads"
	system "./bin/ads_install", "#{prefix}"
  end

end