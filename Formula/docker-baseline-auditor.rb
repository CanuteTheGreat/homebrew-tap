class DockerBaselineAuditor < Formula
  desc "Read-only Docker security baseline checker, zero dependencies"
  homepage "https://git.canutethegreat.com/CanuteTheGreat/docker-baseline-auditor"
  url "https://git.canutethegreat.com/CanuteTheGreat/docker-baseline-auditor/raw/commit/6503752e042b8d82e7f1b2a6f6f284e5046c3b56/docker-baseline-auditor.py"
  sha256 "0237085c235ba5cc0c5888f87444ef7ab755938254248a55ebcc624277e7c926"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "docker-baseline-auditor.py" => "docker-baseline-auditor"
  end

  test do
    system "#{bin}/docker-baseline-auditor", "--help"
  end
end
