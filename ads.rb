class Ads < Formula

  desc "Interactive content utility"
  homepage "https://github.com/kees-/ads"
  url "https://github.com/kees-/ads/archive/v0.%CE%B13.tar.gz"
  version "v0.α3"
  sha256 "1005c8b16aaf55bc795c83434443cb4e029442341a8429c266028c197268764e"
  license "MIT"

  depends_on "zsh"
  depends_on "gettext"
  depends_on "ffmpeg"

  def install
	bin.install "ads"
	bin.install "ads_install"
	lib.install "lib/ads"
	system "zsh", "./ads_install", "#{prefix}"
  end

end