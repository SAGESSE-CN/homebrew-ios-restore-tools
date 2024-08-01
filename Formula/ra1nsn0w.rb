class Ra1nsn0w < Formula
  desc "Tethered booter for 64bit iOS devices vulnerable to checkm8"
  homepage "https://github.com/tihmstar/ra1nsn0w"
  license "LGPL-2.1-only"
  head "https://github.com/tihmstar/ra1nsn0w.git", branch: "master"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build

  depends_on "img1tool"
  depends_on "img3tool"
  depends_on "img4tool"
  depends_on "libfragmentzip"
  depends_on "libgeneral"
  depends_on "libipatcher"
  depends_on "libirecovery"
  depends_on "tsschecker"

  def install
    system "./autogen.sh", "--disable-silent-rules", *std_configure_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
