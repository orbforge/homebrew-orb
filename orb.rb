class Orb < Formula
  version "1.3.9"
  sha256 "3132decfa5ca2ef8e497a57491f59d3f627358fb2be0d5246171008eee7b5bca"
  
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
