class Sauna < Formula
  desc "CLI tool for controlling Klafs saunas"
  homepage "https://github.com/dobermai/sauna"
  version "0.1.6"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/dobermai/sauna/releases/download/v0.1.6/sauna-macos-x86_64"
      sha256 "6f978ceefb2e0dafbe28487db1363fa96e0a721405519e460435374807d59b48"
    end
    on_arm do
      url "https://github.com/dobermai/sauna/releases/download/v0.1.6/sauna-macos-aarch64"
      sha256 "c07535a993d9b0ebd85caca71f7aea84d5a024e731e4663f5abe10108f55e8b8"
    end
  end

  def install
    bin.install stable.url.split("/").last => "sauna"
  end

  test do
    system "#{bin}/sauna", "--version"
  end
end
