class NginxConfigAuditor < Formula
  desc "Free, stdlib-only Python 3 static analyzer for nginx configuration files"
  homepage "https://git.canutethegreat.com/CanuteTheGreat/nginx-config-auditor"
  url "https://git.canutethegreat.com/CanuteTheGreat/nginx-config-auditor/raw/commit/a170171e5e9df5cd17319df24f985de8c5e586ae/nginx_config_auditor.py"
  sha256 "b402b3876ed0c4ab9e2d2025abdb7d4f76b51ebaa2626f01bb52b51c1f68becd"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "nginx_config_auditor.py" => "nginx-config-auditor"
  end

  test do
    system "#{bin}/nginx-config-auditor", "--help"
  end
end
