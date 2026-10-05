class Orb < Formula
  version "1.6.1"
  sha256 "ea739000ce57cd36d2b9bcf25729f1d891d3052b3e323b5b85b15c3dc82adad1"

  desc "Network performance monitor"
  homepage "https://orb.net"
  url "https://pkgs.orb.net/stable/macos/orb-#{version}.zip"
  
  def install
    bin.install "orb"
  end

  service do
    run [opt_bin/"orb", "sensor"]
    keep_alive true
    error_log_path var/"log/orb.log"
  end
  
  test do
    system "#{bin}/orb", "version"
  end
end
