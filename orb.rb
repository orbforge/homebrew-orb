class Orb < Formula
	desc "Network performance monitor"
	homepage "https://orb.net"
	url "https://pkgs.orb.net/earlyaccess/orb-osx-universal.zip"
	sha256 "d54915cada76776bdb9574701f4566bd7404d82079bfcde31bf26b93ec669f63"
	version "1.0.1" # or whatever version you have

  def install
    bin.install "orb"
  end

  service do
    run [opt_bin/"orb", "sensor"]
    keep_alive true
  end
  
  test do
    system "#{bin}/orb", "version"
  end
end
