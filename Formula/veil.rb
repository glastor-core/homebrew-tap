class Veil < Formula
  desc "Ultrafast reversible PII & secret anonymizer, MCP server, and proxy in Rust"
  homepage "https://glastor.es"
  version "0.1.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/glastor-core/pii-veil/releases/download/v#{version}/veil-macos-arm64.tar.gz"
      sha256 "4d6b268249dfb4931d3bc8850ecf5d87b5d32fd79b30741377d858d944afbee8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/glastor-core/pii-veil/releases/download/v#{version}/veil-linux-x86_64.tar.gz"
      sha256 "df2fb884a366e16519c66292067227e39430ca732fdbf65ad11ed8556f34ab08"
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
