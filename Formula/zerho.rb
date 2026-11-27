# Homebrew Formula for glastor-core/homebrew-tap
class Zerho < Formula
  desc "Zero-Node, 100% Safe Rust frontend dev server and production bundler"
  homepage "https://zerho.xyz"
  version "1.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/glastor-core/jester/releases/download/v#{version}/zerho-macos-arm64.tar.gz"
      sha256 "7117526da97cec7e6f196c03050f32c38133dc2e2f8d428bd358ddb5369111a0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/glastor-core/jester/releases/download/v#{version}/zerho-linux-x86_64.tar.gz"
      sha256 "712be9003f79c694c7feb37df93edfa857dbf72e7d76fc6be2ca011c9b533748"
    end
  end

  def install
    bin.install "zerho"
  end

  test do
    assert_match "zerho #{version}", shell_output("#{bin}/zerho --version")
  end
end
