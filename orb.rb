class Orb < Formula
  version "1.7.0"
  sha256 "781c4d58ad704d2ce6bd07d176d6870d521edd6be6c9872ff78b430aa8097494"

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
