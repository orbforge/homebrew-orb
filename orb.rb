class Orb < Formula
  version "1.2"
  sha256 "9eb52ee46c7ab5ea4ca0982415da99fded1b7d7354f75e50847bdae6cb44eb66"
  
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
