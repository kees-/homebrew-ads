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
	lib.install "lib/ads.conf"
	lib.install "lib/adt.conf"
	lib.install "lib/klib.conf"
	lib.install "lib/q.conf"
	lib.install "lib/template/"
  end

end