class Specter < Formula
  desc "Polyglot AST API contract differ and SemVer gatekeeper in Rust"
  homepage "https://specter.glastor.es"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/glastor-core/specter/releases/download/v#{version}/specter-macos-arm64"
      sha256 "23b18ec90296382fd3cff578e2e27ff28a3d9d432b597d858655e1c0e78b1681"
    end
    on_intel do
      url "https://github.com/glastor-core/specter/releases/download/v#{version}/specter-macos-x64"
      sha256 "1cb25f8eb9a80367729d0499c87ee38c45f6d9e4a6c1d2fb88ce82b43b92d4c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/glastor-core/specter/releases/download/v#{version}/specter-linux-x64"
      sha256 "92ad5a7db4b7a6027f45dfd1fa36e757f1035325b946dbc447dc7fb740be1d5f"
    end
  end

  def install
    binary_name = Dir["specter*"].first || (OS.mac? ? (Hardware::CPU.arm? ? "specter-macos-arm64" : "specter-macos-x64") : "specter-linux-x64")
    bin.install binary_name => "specter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/specter --version")
  end
end
