class Specter < Formula
  desc "Polyglot AST API contract differ and SemVer gatekeeper in Rust"
  homepage "https://glastor.es"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/glastor-core/specter/releases/download/v#{version}/specter-macos-arm64"
      sha256 "221d2f4b21a5d279a71260ac44cf1a5cc775e7f3a42f1fc0c1c160fd902fdd85"
    end
    on_intel do
      url "https://github.com/glastor-core/specter/releases/download/v#{version}/specter-macos-x64"
      sha256 "2b96c26f961e0c6c8b40aa454846025188e6e99b70a8dd271f8e3bf38e86075c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/glastor-core/specter/releases/download/v#{version}/specter-linux-x64"
      sha256 "0155f30839c66135ef8416f35852ded6b0f7c88d0c2c91a231d035fd7d57ed60"
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
