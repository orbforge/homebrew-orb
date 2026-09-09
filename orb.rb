class Orb < Formula
  version "1.5.5"
  sha256 "7ad3a6bb5ec300886b59c6f7336354075f4085d2badb67f991aef9b8fbd2c742"

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
