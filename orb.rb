class Orb < Formula
  version "1.0.9"
  sha256 "847800ceae5d39e4b572591f2be7c192c4741195fb9e3a4c291374580893e3b8"
  
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
