class TlsCertWatchdog < Formula
  desc "Dependency-free TLS certificate expiry/misconfiguration checker"
  homepage "https://git.canutethegreat.com/CanuteTheGreat/tls-cert-watchdog"
  url "https://git.canutethegreat.com/CanuteTheGreat/tls-cert-watchdog/raw/commit/64d26caa616945765e688da1aa40c4a2e862067d/cert_watch.py"
  sha256 "283cc505a1036050a891cc3d45f1c22bde81f47c74501769a5113de2cf10b77e"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "cert_watch.py" => "tls-cert-watchdog"
  end

  test do
    system "#{bin}/tls-cert-watchdog", "--help"
  end
end
