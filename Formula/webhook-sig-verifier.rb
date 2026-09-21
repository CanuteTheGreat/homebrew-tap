class WebhookSigVerifier < Formula
  desc "Verify webhook HMAC signatures locally without touching production code"
  homepage "https://git.canutethegreat.com/CanuteTheGreat/webhook-sig-verifier"
  url "https://git.canutethegreat.com/CanuteTheGreat/webhook-sig-verifier/raw/commit/d239c513f4537c2873e7b9bb87c4ac3c0f265e40/webhook_sig_verifier.py"
  sha256 "62832de949ba8dfa4645d8218ea972b14bdf464a1029dba0350a89713b8f639e"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "webhook_sig_verifier.py" => "webhook-sig-verifier"
  end

  test do
    system "#{bin}/webhook-sig-verifier", "--help"
  end
end
