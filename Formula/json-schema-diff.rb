class JsonSchemaDiff < Formula
  desc "JSON Schema breaking-change detector, built for API versioning"
  homepage "https://git.canutethegreat.com/CanuteTheGreat/json-schema-diff"
  url "https://git.canutethegreat.com/CanuteTheGreat/json-schema-diff/raw/commit/1d9fd1d74c7795f944659e88d75d3e141833bd8c/schema_diff.py"
  sha256 "a2d89443d73b8fe3cc930f8537190d03c955305ef17ff73a2e0cdba04c892c93"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "schema_diff.py" => "json-schema-diff"
  end

  test do
    system "#{bin}/json-schema-diff", "--help"
  end
end
