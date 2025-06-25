class Orb < Formula
  version "1.1.0"
  sha256 "56d9f5371048d70570384c18008cedd78006b7887ed29dbf262885ed5d59b35a"
  
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
