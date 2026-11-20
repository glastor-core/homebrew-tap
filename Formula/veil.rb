class Veil < Formula
  desc "Ultrafast reversible PII & secret anonymizer, MCP server, and proxy in Rust"
  homepage "https://pii-veil.glastor.es"
  version "0.1.4"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/glastor-core/pii-veil/releases/download/v#{version}/veil-macos-arm64.tar.gz"
      sha256 "b8ca580757d6aeb193bc4d1db2106590c01c46a87d8dff9b2edd597b3f6b4cbe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/glastor-core/pii-veil/releases/download/v#{version}/veil-linux-x86_64.tar.gz"
      sha256 "8a434aff912ac93f446f47b654f598e0f88803a89de4efae479f52d9e8702f49"
    end
  end

  def install
    bin.install "veil"
    include.install "pii_veil.h" if File.exist?("pii_veil.h")
  end

  test do
    assert_match "veil", shell_output("#{bin}/veil --help")
  end
end
