class CertTransparencyWatcher < Formula
  desc "Catch rogue or unexpected TLS certificates via public Certificate Transparency logs"
  homepage "https://git.canutethegreat.com/CanuteTheGreat/cert-transparency-watcher"
  url "https://git.canutethegreat.com/CanuteTheGreat/cert-transparency-watcher/raw/commit/462088537807417dc01f4651e72cd1b6cbc60673/cert_transparency_watcher.py"
  sha256 "28759550f5bc9b3144ad9aba755c7bdc855a699804928c6d23f64fc7c1e32812"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "cert_transparency_watcher.py" => "cert-transparency-watcher"
  end

  test do
    system "#{bin}/cert-transparency-watcher", "--help"
  end
end
