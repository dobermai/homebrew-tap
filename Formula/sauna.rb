class Sauna < Formula
  desc "CLI tool for controlling Klafs saunas"
  homepage "https://github.com/dobermai/sauna"
  version "0.1.5"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/dobermai/sauna/releases/download/v0.1.5/sauna-macos-x86_64"
      sha256 "4ff4e0f865d2db7c4bd81b7c01665bf3ecd13a3cb5ba04906af0160763d53828"
    end
    on_arm do
      url "https://github.com/dobermai/sauna/releases/download/v0.1.5/sauna-macos-aarch64"
      sha256 "c07c2ea84b047e1735c79c62626daef5bc21b009ebbe3d295e8b94158dc1f1db"
    end
  end

  def install
    bin.install stable.url.split("/").last => "sauna"
  end

  test do
    system "#{bin}/sauna", "--version"
  end
end
