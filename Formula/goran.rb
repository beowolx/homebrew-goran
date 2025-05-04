class Goran < Formula
  desc "Domain & IP Analysis CLI"
  homepage "https://github.com/beowolx/goran"
  url      "https://github.com/beowolx/goran/releases/download/v0.1.7/goran-0.1.7-x86_64-apple-darwin.tar.gz"
  sha256   "21fe94fda45912fb331f88c9990b2378dae949d21a1017944d5833fc269d04f9"
  license  "MIT"

  def install
    bin.install "goran"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/goran --help")
  end
end
