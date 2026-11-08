class ByteGauge < Formula
  desc "SIMD binary security, checksec hardening, and SBOM auditor"
  homepage "https://glastor.es"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/glastor-core/byte-gauge/releases/download/v#{version}/byte-gauge-macos-arm64"
      sha256 "7a0baaa414921ca953ba8c4ef17ad555ca4c04fb55698802ef623e8f3fc27a5c"
    end
    on_intel do
      url "https://github.com/glastor-core/byte-gauge/releases/download/v#{version}/byte-gauge-macos-x64"
      sha256 "28823d1e5ff9a85a054aac7b3b98cbbb3e93d17bedaf6309f7d9ab380ed5092e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/glastor-core/byte-gauge/releases/download/v#{version}/byte-gauge-linux-x64"
      sha256 "5edfe482208a0d01ee77f4469720dd3b6038a329e46950275a5e3d744ec4df9b"
    end
  end

  def install
    binary_name = Dir["byte-gauge*"].first || (OS.mac? ? (Hardware::CPU.arm? ? "byte-gauge-macos-arm64" : "byte-gauge-macos-x64") : "byte-gauge-linux-x64")
    bin.install binary_name => "byte-gauge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/byte-gauge --version")
  end
end
