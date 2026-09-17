class Orb < Formula
  version "1.5.6"
  sha256 "c6af3327520eebeff043097ca27daa7f396598058166e7cba87ec3231cc14556"

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
