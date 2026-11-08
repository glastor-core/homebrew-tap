class ByteGauge < Formula
  desc "SIMD-accelerated binary security, checksec hardening and SBOM auditor"
  homepage "https://glastor.es"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/glastor-core/byte-gauge/releases/download/v0.1.1/byte-gauge-macos-arm64"
      sha256 "7a0baaa414921ca953ba8c4ef17ad555ca4c04fb55698802ef623e8f3fc27a5c"

      def install
        bin.install "byte-gauge-macos-arm64" => "byte-gauge"
      end
    else
      url "https://github.com/glastor-core/byte-gauge/releases/download/v0.1.1/byte-gauge-macos-x64"
      sha256 "28823d1e5ff9a85a054aac7b3b98cbbb3e93d17bedaf6309f7d9ab380ed5092e"

      def install
        bin.install "byte-gauge-macos-x64" => "byte-gauge"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/glastor-core/byte-gauge/releases/download/v0.1.1/byte-gauge-linux-x64"
      sha256 "5edfe482208a0d01ee77f4469720dd3b6038a329e46950275a5e3d744ec4df9b"

      def install
        bin.install "byte-gauge-linux-x64" => "byte-gauge"
      end
    end
  end

  test do
    system "#{bin}/byte-gauge", "--version"
  end
end
