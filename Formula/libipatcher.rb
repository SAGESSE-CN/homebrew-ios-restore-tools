class Libipatcher < Formula
  desc "Convinient wrapper for iBoot32Patcher/iBoot64Patcher"
  homepage "https://github.com/tihmstar/libipatcher"
  license "LGPL-2.1-only"
  head "https://github.com/tihmstar/libipatcher.git", branch: "master"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build

  depends_on "libfragmentzip"
  depends_on "libpatchfinder"

  def install
    cp "LICENSE", "COPYING" # work around Autotools issue at install time
    system "./autogen.sh", "--disable-silent-rules", *std_configure_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
