class Specter < Formula
  desc "Polyglot AST API contract differ and SemVer gatekeeper in Rust"
  homepage "https://glastor.es"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/glastor-core/specter/releases/download/v0.2.0/specter-macos-arm64"
      sha256 "fca80c76516dc98323dfe20e518c2490df8e008de13142d3738773819bc21716"

      def install
        bin.install "specter-macos-arm64" => "specter"
      end
    else
      url "https://github.com/glastor-core/specter/releases/download/v0.2.0/specter-macos-x64"
      sha256 "e81700914d336e8000692f936e315b65b0ad5a146155ea1d304fd792b43e9a1d"

      def install
        bin.install "specter-macos-x64" => "specter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/glastor-core/specter/releases/download/v0.2.0/specter-linux-x64"
      sha256 "d1eb66d441bb6968eca307911ca0d83c471a3fe63fbedca5ad3737397072b588"

      def install
        bin.install "specter-linux-x64" => "specter"
      end
    end
  end

  test do
    system "#{bin}/specter", "--version"
  end
end
