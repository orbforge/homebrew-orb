class Orb < Formula
  version "1.5.3"
  sha256 "9431c4a0afaf7095b71022f9a60b7680c8c3524361649a87a79ee1bc57d58e93"

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
