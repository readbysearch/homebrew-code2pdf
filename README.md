# homebrew-code2pdf

Homebrew formula for [code2pdf](https://github.com/readbysearch/code2pdf) - A tool for converting source code to PDF with syntax highlighting.

## Installation

```bash
# Add this tap
brew tap readbysearch/code2pdf

# Install code2pdf
brew install code2pdf
```

## Dependencies

This formula will automatically install the following dependencies:
- vim (for syntax highlighting)
- ghostscript (for PDF operations)
- jq (for JSON processing)

## Updating

To update to the latest version:
```bash
brew update
brew upgrade code2pdf
```

## Troubleshooting

If you encounter any issues with installation:

1. First, try running:
```bash
brew doctor
```

2. If problems persist, you can try:
```bash
brew uninstall code2pdf
brew untap readbysearch/code2pdf
brew tap readbysearch/code2pdf
brew install code2pdf
```

3. If you still have issues, please [open an issue](https://github.com/readbysearch/homebrew-code2pdf/issues) in this repository.

## Contributing

If you find any issues with the formula, please [open an issue](https://github.com/readbysearch/homebrew-code2pdf/issues) or submit a pull request.

For issues with the code2pdf tool itself, please visit the [main repository](https://github.com/readbysearch/code2pdf).
