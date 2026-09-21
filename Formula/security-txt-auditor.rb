class SecurityTxtAuditor < Formula
  desc "Free, zero-dependency tool that audits security.txt and robots.txt for a domain"
  homepage "https://git.canutethegreat.com/CanuteTheGreat/security-txt-auditor"
  url "https://git.canutethegreat.com/CanuteTheGreat/security-txt-auditor/raw/commit/c95dc3ba5bf57d5a966c77b871b5678c71ca934f/security_txt_auditor.py"
  sha256 "e8c0b77d2e8b6fee3ecb5e6a3cbfd8733e93d6e7429e8d376362230c62a27b69"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "security_txt_auditor.py" => "security-txt-auditor"
  end

  test do
    system "#{bin}/security-txt-auditor", "--help"
  end
end
