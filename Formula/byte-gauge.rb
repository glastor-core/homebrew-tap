class ByteGauge < Formula
  desc "SIMD binary security, checksec hardening, and SBOM auditor"
  homepage "https://glastor.es"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/glastor-core/byte-gauge/releases/download/v#{version}/byte-gauge-macos-arm64"
      sha256 "dea2f58f2485031f22c89a427ee244d84374d2bf4733f035e6fe97fa5799a52f"
    end
    on_intel do
      url "https://github.com/glastor-core/byte-gauge/releases/download/v#{version}/byte-gauge-macos-x64"
      sha256 "7c8346dd83f39a4dd783f3fcc2fd813ed4b99e0df20a571e88a5f5ec48771055"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/glastor-core/byte-gauge/releases/download/v#{version}/byte-gauge-linux-x64"
      sha256 "7131eeae8be42bd724332ae7ae6952ec066bb25175af3380a9587ce54fbf00fe"
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
