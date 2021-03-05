class Ads < Formula
  desc "Interactive content utility"
  homepage "https://github.com/kees-/ads"
  url "https://github.com/kees-/ads/archive/v0.%CE%B11.tar.gz"
  version "v0.α1"
  sha256 "d6b06e9800c8bd1262bd8a490b08ea8b01a07af63162dedc4772b9b676724dea"
  license ""

  depends_on "zsh"
  depends_on "gettext"
  depends_on "ffmpeg"

  def install
	bin.install "ads"
	mkdir_p "${HOME}/.config/ads"
	mv "lib/*", "${HOME}/.config/ads"
  end

end
