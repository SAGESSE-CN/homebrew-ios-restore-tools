class Libfragmentzip < Formula
  desc "Library allowing to download single files from a remote zip archive"
  homepage "https://github.com/tihmstar/libfragmentzip"
  license "LGPL-3.0-only"
  head "https://github.com/tihmstar/libfragmentzip.git", branch: "master"

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
