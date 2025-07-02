class Orb < Formula
  version "1.1.1"
  sha256 "df5095fc048bba96444a76ad62eb0f13fedb5056cf3178343ea120d9ff3902dd"
  
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
