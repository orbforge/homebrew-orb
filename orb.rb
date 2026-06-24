class Orb < Formula
  version "1.5.0"
  sha256 "f4f3ebd2a04b48fcb81039e5bed5d7a214d2102704c301ea14889d53d68b833d"

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
