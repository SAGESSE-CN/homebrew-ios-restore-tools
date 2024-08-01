class Libtatsu < Formula
  desc "Library handling the communication with Apple's Tatsu Signing Server (TSS)"
  homepage "https://github.com/libimobiledevice/libtatsu"
  url "https://github.com/libimobiledevice/libtatsu/releases/download/1.0.3/libtatsu-1.0.3.tar.bz2"
  sha256 "4f69452d23e50e0ffbe844110e6ab6a900d080e051fbda3b7d595f679dee9bc5"
  license "LGPL-2.1-only"
  head "https://github.com/libimobiledevice/libtatsu.git", branch: "master"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build

  depends_on "libplist"

  def install
    if build.head?
      system "./autogen.sh", "--disable-silent-rules", *std_configure_args
    else
      system "./configure", "--disable-silent-rules", *std_configure_args
    end
    system "make", "install"
  end

  test do
    system "false"
  end
end
