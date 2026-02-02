class Orb < Formula
  version "1.4.3"
  sha256 "2b77af2f3261862b93d4656dc9bea122ad06c5c1760b11b10c2a5e1b8290b82a"
  
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
