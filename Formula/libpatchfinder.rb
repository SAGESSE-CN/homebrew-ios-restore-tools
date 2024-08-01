class Libpatchfinder < Formula
  desc "ARM offsetfinder. It finds offsets, patches, parses Mach-O and even supports IMG4/IMG3"
  homepage "https://github.com/tihmstar/libpatchfinder"
  license "LGPL-2.1-only"
  head "https://github.com/tihmstar/libpatchfinder.git", branch: "master"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build

  depends_on "img3tool"
  depends_on "img4tool"
  depends_on "libgeneral"
  depends_on "libinsn"

  def install
    system "./autogen.sh", "--disable-silent-rules", "--with-binrider", *std_configure_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
