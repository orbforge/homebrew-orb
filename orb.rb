class Orb < Formula
  version "1.2.0"
  sha256 "81666f8efb19d059493363cea7244cddc41d29b36c96c16087de347dbbe00704"
  
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
