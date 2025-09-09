class Orb < Formula
  version "1.3.0"
  sha256 "24ee79cee3c44608600cc70c1f5ff13147e314fb96689d9cd4deb07666067c24"
  
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
