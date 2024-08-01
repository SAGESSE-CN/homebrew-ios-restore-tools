class Img3tool < Formula
  desc "Tool for manipulating IMG3 files"
  homepage "https://github.com/tihmstar/img3tool"
  license "LGPL-3.0-only"
  head "https://github.com/tihmstar/img3tool.git", branch: "master"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build

  depends_on "libgeneral"
  depends_on "libplist"
  depends_on "openssl"

  def install
    system "./autogen.sh", "--disable-silent-rules", *std_configure_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
