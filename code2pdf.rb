class Code2pdf < Formula
  desc "Convert source code files to PDF with syntax highlighting"
  homepage "https://github.com/readbysearch/code2pdf"
  url "https://github.com/readbysearch/code2pdf/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "4674d0cacc78f82f70c4e67fe51b826de34ba6b7866bd74d52d7588909e8febb"
  license "AGPL-3.0"

  depends_on "ghostscript"
  depends_on "vim"
  depends_on "jq"

  def install
    bin.install "bin/code2pdf"
    # Install scripts to a specific location that Homebrew manages
    (prefix/"scripts").install Dir["scripts/*"]
    (prefix/"config").install "config/vimrc"
    # Make scripts executable
    chmod 0755, Dir["#{prefix}/scripts/*"]
  end

  test do
    # Create a test file
    (testpath/"test.py").write("print('Hello, World!')")
    
    # Test single file conversion
    system "#{bin}/code2pdf", "#{testpath}/test.py"
    assert_predicate testpath/"test.pdf", :exist?
  end
end
