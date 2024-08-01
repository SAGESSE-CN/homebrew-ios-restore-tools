class Img1tool < Formula
  desc "Tool for manipulating IMG1 (8900) files"
  homepage "https://github.com/tihmstar/img1tool"
  license "LGPL-2.1-only"
  head "https://github.com/tihmstar/img1tool.git", branch: "master"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build

  depends_on "libgeneral"

  def install
    system "./autogen.sh", "--disable-silent-rules", *std_configure_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
