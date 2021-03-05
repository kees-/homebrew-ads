class Ads < Formula

  desc "Interactive content utility"
  homepage "https://github.com/kees-/ads"
  url "https://github.com/kees-/ads/archive/v0.%CE%B13.tar.gz"
  version "v0.α3"
  sha256 "6d49476f6ebae6b7f3b273cb93f703118414dcf46d763f45381ff8f3d914ea4e"
  license "MIT"

  depends_on "zsh"
  depends_on "gettext"
  depends_on "ffmpeg"

  def install
	bin.install "ads"
	lib.install "lib/ads"
	system "zsh", "./ads_install", "#{prefix}"
  end

end