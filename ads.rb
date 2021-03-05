class Ads < Formula

  desc "Interactive content utility"
  homepage "https://github.com/kees-/ads"
  url "https://github.com/kees-/ads/archive/v0.%CE%B13.tar.gz"
  version "v0.α3"
  sha256 "ab1ad26133700eb9c80f983cbdc980d9695082942b4531d2199ebf92d82b970e"
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