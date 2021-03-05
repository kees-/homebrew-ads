class Ads < Formula

  desc "Interactive content utility"
  homepage "https://github.com/kees-/ads"
  url "https://github.com/kees-/ads/archive/v0.%CE%B13.tar.gz"
  version "v0.α3"
  sha256 "61c312e3c98ec035705036d7c00c610b8b63eaeccd5da80f84418eb8c7bbb1e8"
  license "MIT"

  depends_on "zsh"
  depends_on "gettext"
  depends_on "ffmpeg"

  def install
	bin.install "ads"
	lib.install "lib/ads"
	system "./ads_install", "#{prefix}"
  end

end