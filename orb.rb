class Orb < Formula
  version "1.4.0"
  sha256 "cd886e83576e32f7e8805237a3d63cc5f62f15a949a464c0e73c69ba4b86ec20"
  
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
