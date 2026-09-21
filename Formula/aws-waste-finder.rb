class AwsWasteFinder < Formula
  desc "Read-only Python script that finds common silent AWS cost waste"
  homepage "https://git.canutethegreat.com/CanuteTheGreat/aws-waste-finder"
  url "https://git.canutethegreat.com/CanuteTheGreat/aws-waste-finder/raw/commit/0b3719ddec5e6c59c9d3f38d8de2e138dfda7533/aws_waste_finder.py"
  sha256 "a96cf4c5bc6f66752a1079840fbea38ab0f0c1cf40a7394bd8931115c20cdd77"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "aws_waste_finder.py" => "aws-waste-finder"
  end

  def caveats
    <<~EOS
      aws-waste-finder requires boto3 at runtime:
        pip install boto3
    EOS
  end

  test do
    system "python3", "-c", "import py_compile; py_compile.compile('#{bin}/aws-waste-finder', doraise=True)"
  end
end
