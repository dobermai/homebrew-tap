class Sauna < Formula
  desc "CLI tool for controlling Klafs saunas"
  homepage "https://github.com/dobermai/sauna"
  version "0.1.7"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/dobermai/sauna/releases/download/v0.1.7/sauna-macos-x86_64"
      sha256 "7f3d92a9bc03442ae2d4efd6a3fcaec03bd980893ab38acf8fdf777ee42ed4e4"
    end
    on_arm do
      url "https://github.com/dobermai/sauna/releases/download/v0.1.7/sauna-macos-aarch64"
      sha256 "1b37ef9f9661fc2b6731cb1bf49cf88f38595bb961f080926bfea6f52157adf3"
    end
  end

  def install
    bin.install stable.url.split("/").last => "sauna"
  end

  test do
    system "#{bin}/sauna", "--version"
  end
end
