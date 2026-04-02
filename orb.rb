class Orb < Formula
  version "1.4.11"
  sha256 "818eb02ae5f1e96942de7b7782ee0848afa18bcbdc3a80692e6e9e4dc17201b8"
  
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
