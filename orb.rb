class Orb < Formula
  version "1.6.5"
  sha256 "a2ae2fc5960db9a6b6a2f7b1e120c0cce59b02e7b7ea37fc5499f517d11cf82b"

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
