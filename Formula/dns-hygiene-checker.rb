class DnsHygieneChecker < Formula
  desc "Find dangling DNS records and subdomain takeover risk before an attacker does"
  homepage "https://git.canutethegreat.com/CanuteTheGreat/dns-hygiene-checker"
  url "https://git.canutethegreat.com/CanuteTheGreat/dns-hygiene-checker/raw/commit/534654c8c4ad8cd267c80893d6a728c3fc5eefba/dns_hygiene_checker.py"
  sha256 "34178a64811589518e179998b30c84c59d179987ecc58ca2e7b590550b0aa008"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "dns_hygiene_checker.py" => "dns-hygiene-checker"
  end

  test do
    system "#{bin}/dns-hygiene-checker", "--help"
  end
end
