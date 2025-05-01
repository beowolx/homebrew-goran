class Goran < Formula
  desc "Domain & IP Analysis CLI"
  homepage "https://github.com/beowolx/goran"
  url      "https://github.com/beowolx/goran/releases/download/v0.1.2/goran-0.1.2-x86_64-apple-darwin.tar.gz"
  sha256   "210292f46faa6f275ae178994bb0f8704447ef7d8858e621e00a1317b4d04880"
  license  "MIT"

  def install
    bin.install "goran"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/goran --help")
  end
end
