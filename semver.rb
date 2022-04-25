class Semver < Formula
  desc "Semantic Versioning utility"
  homepage "https://github.com/chriskilding/semver"
  url "https://github.com/chriskilding/semver/archive/0.0.10.tar.gz"
  sha256 "0fac6ee2e4046ea4ae1ca7536157d92d5b189821057a1c97519a51349a9d30bc"

  head "https://github.com/chriskilding/semver.git"

  def install
    system "make", "prefix=#{prefix}", "install"
  end

  test do
    system "#{bin}/semver", "-h"
  end
end
