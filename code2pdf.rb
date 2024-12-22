class Code2pdf < Formula
  desc "Convert source code files to PDF with syntax highlighting"
  homepage "https://github.com/readbysearch/code2pdf"
  url "https://github.com/readbysearch/code2pdf/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
  license "AGPL-3.0"

  depends_on "ghostscript"
  depends_on "vim"
  depends_on "jq"

  def install
    # Install scripts
    bin.install "bin/code2pdf"
    prefix.install "scripts"
    
    # Install vim syntax configuration
    prefix.install "config/vimrc"
  end

  test do
    # Create a test file
    (testpath/"test.py").write("print('Hello, World!')")
    
    # Test single file conversion
    system "#{bin}/code2pdf", "#{testpath}/test.py"
    assert_predicate testpath/"test.pdf", :exist?
  end
end
