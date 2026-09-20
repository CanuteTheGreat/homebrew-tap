class SshdHardeningAuditor < Formula
  desc "Audits sshd_config against CIS/NIST-aligned SSH hardening recommendations"
  homepage "https://git.canutethegreat.com/CanuteTheGreat/sshd-hardening-auditor"
  url "https://git.canutethegreat.com/CanuteTheGreat/sshd-hardening-auditor/raw/commit/4b379e04d6e5af0192300f6a1e566602b556ce92/sshd_audit.py"
  sha256 "f0f8b7ad762003b398e14c5812397fbb6282ccb1bfb22d4fce66f8044c12fd69"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "sshd_audit.py" => "sshd-hardening-auditor"
  end

  test do
    system "#{bin}/sshd-hardening-auditor", "--help"
  end
end
