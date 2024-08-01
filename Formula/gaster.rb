class Gaster < Formula
  desc "Tool for placing iOS devices in a checkm8-pwned state"
  homepage "https://github.com/0x7ff/gaster"
  license "Apache-2.0"
  head "https://github.com/0x7ff/gaster.git", branch: "main"

  def install
    system "make"
    bin.install "gaster"
  end

  test do
    system "false"
  end
end
