class CronSanityChecker < Formula
  desc "Catches broken or misleading cron schedules before they bite you in production"
  homepage "https://git.canutethegreat.com/CanuteTheGreat/cron-sanity-checker"
  url "https://git.canutethegreat.com/CanuteTheGreat/cron-sanity-checker/raw/commit/43bca95fec66cd6968454025cc15888e8209809c/cron_sanity_checker.py"
  sha256 "43b263dea897d0181630c6dd6226e4c238446e40f66856850c6c8e157796de04"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "cron_sanity_checker.py" => "cron-sanity-checker"
  end

  test do
    system "#{bin}/cron-sanity-checker", "--help"
  end
end
