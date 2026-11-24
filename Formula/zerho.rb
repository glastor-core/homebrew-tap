# Homebrew Formula for glastor-core/homebrew-tap
class Zerho < Formula
  desc "Zero-Node, 100% Safe Rust frontend dev server and production bundler"
  homepage "https://zerho.xyz"
  version "1.0.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/glastor-core/jester/releases/download/v#{version}/zerho-macos-arm64.tar.gz"
      sha256 "89844ff31d00a739837ce07605b3c090c9f7953c70884831befbe535dea20c18"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/glastor-core/jester/releases/download/v#{version}/zerho-linux-x86_64.tar.gz"
      sha256 "94a5c98623d5dcb9e9fa4c590cac1d499ec09ad5962a933ce0cc52809df3b173"
    end
  end

  def install
    bin.install "zerho"
  end

  test do
    assert_match "zerho #{version}", shell_output("#{bin}/zerho --version")
  end
end
