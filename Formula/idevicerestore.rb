class Idevicerestore < Formula
  desc "Restore/upgrade firmware of iOS devices"
  homepage "https://libimobiledevice.org"
  url "https://github.com/libimobiledevice/idevicerestore/releases/download/1.0.0/idevicerestore-1.0.0.tar.bz2"
  sha256 "32712e86315397fd2e8999e77a2d2f790c67f6b4aa50d4d1c64cb2c4609836f7"
  license "LGPL-3.0-only"
  head "https://github.com/libimobiledevice/idevicerestore.git", branch: "master"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build

  depends_on "libimobiledevice"
  depends_on "libirecovery"
  depends_on "libzip"

head do
    depends_on "libtatsu"
done
  
end
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
