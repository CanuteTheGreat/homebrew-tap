class MailSecurityAuditor < Formula
  desc "Zero-dependency SPF/DKIM/DMARC/MX domain email-security auditor"
  homepage "https://git.canutethegreat.com/CanuteTheGreat/mail-security-auditor"
  url "https://git.canutethegreat.com/CanuteTheGreat/mail-security-auditor/raw/commit/3fe28df1356abaf0b205eba1f9ad90fd4b1222af/mail_audit.py"
  sha256 "dadcfb3ddeca4c7351561f4e65180213f2d731361b1b47e7b88a809e6c9fdfb4"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "mail_audit.py" => "mail-security-auditor"
  end

  test do
    system "#{bin}/mail-security-auditor", "--help"
  end
end
