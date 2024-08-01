class Libgeneral < Formula
  desc "General stuff for iOS related tools"
  homepage "https://github.com/tihmstar/libgeneral"
  license "LGPL-2.1-only"
  head "https://github.com/tihmstar/libgeneral.git", branch: "master"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build

  def install
    system "./autogen.sh", "--disable-silent-rules", *std_configure_args
    system "make", "install"
  end

  test do
    # IMPLEMENT TEST
    system "false"
  end
end
