class Orb < Formula
  version "1.3.1"
  sha256 "0cba20d43d2d8afc8b362ce84b839460024e3023675835b2dea8b7a784136b52"
  
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
