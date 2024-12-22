class Code2pdf < Formula
  desc "Convert source code files to PDF with syntax highlighting"
  homepage "https://github.com/readbysearch/code2pdf"
  url "https://github.com/readbysearch/code2pdf/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "6801de2e6ea3d8cbb9a6393767ece50b40ab60d81a06fb98aae525281ba531f4"
  license "AGPL-3.0"

  depends_on "ghostscript"
  depends_on "vim"
  depends_on "jq"

  def install
    bin.install "bin/code2pdf"
    # Install scripts to a specific location that Homebrew manages
    (prefix/"scripts").install Dir["scripts/*"]
    (prefix/"config").install "config/vimrc"
  end

  test do
    # Create a test file
    (testpath/"test.py").write("print('Hello, World!')")
    
    # Test single file conversion
    system "#{bin}/code2pdf", "#{testpath}/test.py"
    assert_predicate testpath/"test.pdf", :exist?
  end
end
