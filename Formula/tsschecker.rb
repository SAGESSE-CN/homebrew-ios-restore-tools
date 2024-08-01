class Tsschecker < Formula
  desc "Tool to check tss signing status of various devices and firmwares"
  homepage "https://github.com/tihmstar/tsschecker"
  license "LGPL-3.0-only"
  head "https://github.com/tihmstar/tsschecker.git", branch: "master"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build

  depends_on "libfragmentzip"
  depends_on "libirecovery"

  def install
    system "./autogen.sh", "--disable-silent-rules", *std_configure_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
