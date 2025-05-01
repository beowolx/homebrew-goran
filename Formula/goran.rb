class Goran < Formula
  desc "Domain & IP Analysis CLI"
  homepage "https://github.com/beowolx/goran"
  url      "https://github.com/beowolx/goran/releases/download/v0.1.6/goran-0.1.6-x86_64-apple-darwin.tar.gz"
  sha256   "a089e3fcfefd94b350430a62091d689495d0a578d03824602d2c3e0fe613830f"
  license  "MIT"

  def install
    bin.install "goran"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/goran --help")
  end
end
