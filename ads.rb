class Ads < Formula

  desc "Interactive content utility"
  homepage "https://github.com/kees-/ads"
  url "https://github.com/kees-/ads/archive/v0.%CE%B13.tar.gz"
  version "v0.α3"
  sha256 "33b879beecc548983920b9cd1235531648af6b9a4f3605cdb11a5a7641c156fe"
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