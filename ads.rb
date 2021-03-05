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
	mkdir_p Dir.home/".config/ads"
	mv buildpath/"lib/ads.conf" Dir.home/".config/ads"
	mv buildpath/"lib/adt.conf" Dir.home/".config/ads"
	mv buildpath/"lib/klib.conf" Dir.home/".config/ads"
	mv buildpath/"lib/q.conf" Dir.home/".config/ads"
	mv buildpath/"lib/template" Dir.home/".config/ads"
  end

end