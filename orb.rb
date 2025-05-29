class Orb < Formula
	desc "Network performance monitor"
	homepage "https://orb.net"
	url "https://pkgs.orb.net/earlyaccess/orb-osx-universal.zip"
	sha256 "d54915cada76776bdb9574701f4566bd7404d82079bfcde31bf26b93ec669f63"
	version "1.0.0" # or whatever version you have

  def install
    bin.install "orb"
  end

  test do
    system "#{bin}/orb", "version"
  end
end
