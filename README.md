# homebrew-goran

A Homebrew “tap” for installing **Goran**, the Rust-based Domain & IP Analysis CLI.

![GitHub release (latest by date)](https://img.shields.io/github/v/release/beowolx/homebrew-goran)
![GitHub](https://img.shields.io/github/license/beowolx/homebrew-goran)

## About

**Goran** is a powerful command-line tool written in Rust, providing:

- WHOIS & RDAP lookups
- Geolocation & ISP data
- DNS record queries (A, AAAA, MX, NS, TXT, etc.)
- SSL certificate inspection
- VirusTotal reputation checks
- AI-powered report summaries via Gemini

This tap makes it trivial for macOS users to install **Goran** with Homebrew.

## Installation

First, add the tap:

```sh
brew tap beowolx/goran
```

Then install **Goran**:

```sh
brew install goran
```

You can update it anytime with:

```sh
brew update
brew upgrade goran
```

## Formula

Our formula lives in [`Formula/goran.rb`](Formula/goran.rb) and looks like this:

```ruby
class Goran < Formula
  desc "Domain & IP Analysis CLI"
  homepage "https://github.com/beowolx/goran"
  url      "https://github.com/beowolx/goran/releases/download/v1.2.3/goran-1.2.3-x86_64-apple-darwin.tar.gz"
  sha256   "<SHA256_OF_TARBALL>"
  license  "MIT"

  def install
    bin.install "goran"
  end

  test do
    system "#{bin}/goran", "--help"
  end
end
```

- **desc**: Short description
- **homepage**: Main repo URL
- **url** & **sha256**: Download from GitHub Releases
- **license**: MIT
- **install**: Puts `goran` in Homebrew’s `bin`
- **test**: Verifies the binary runs
