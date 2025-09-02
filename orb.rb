class Orb < Formula
  version "1.2.2"
  sha256 "86753d499a44c6e54380367f9da65a91d5e0fc40b8c99e82806d834455925f8d"
  
  desc "Network performance monitor"
  homepage "https://orb.net"
  url "https://pkgs.orb.net/stable/macos/orb-#{version}.zip"
  
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
