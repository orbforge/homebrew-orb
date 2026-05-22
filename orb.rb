class Orb < Formula
  version "1.4.13"
  sha256 "b668d54f72953c7787012428db147071bdd5483361685b68adc7f16d87ed172e"
  
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
