class Vektor < Formula
  desc "High-speed Rust MCP server, sub-ms Antigravity hook engine, and DevSecOps CLI auditor"
  homepage "https://github.com/glastor-core/vektor"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/glastor-core/vektor/releases/download/v#{version}/vektor-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1b81f9cb3d16360493d5f090982f2bd00f7ea554670906c4df113dc184bdbd6e"
    end
    on_intel do
      url "https://github.com/glastor-core/vektor/releases/download/v#{version}/vektor-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "96b4f1af351037eb04d7a11aaf99fd5920aba71910bc32cbfc85403d36102197"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/glastor-core/vektor/releases/download/v#{version}/vektor-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23f13a78a5ddd5414705d3868569cfc97fdc4453f0b2f63ffcbed9e548643fa7"
    end
  end

  def install
    bin.install "vektor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vektor --version")
  end
end