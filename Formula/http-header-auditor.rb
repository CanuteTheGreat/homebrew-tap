class HttpHeaderAuditor < Formula
  desc "Zero-dependency live HTTP security header scanner"
  homepage "https://git.canutethegreat.com/CanuteTheGreat/http-header-auditor"
  url "https://git.canutethegreat.com/CanuteTheGreat/http-header-auditor/raw/commit/2f0a8ceb476d967cbca43de9622833f3dfdbea0c/http_header_auditor.py"
  sha256 "5d96ee8054d313060dbd8886246eb94c1079a0c4913483686f58a6d838c76e60"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "http_header_auditor.py" => "http-header-auditor"
  end

  test do
    system "#{bin}/http-header-auditor", "--help"
  end
end
