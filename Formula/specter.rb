class Specter < Formula
  desc "Polyglot AST API contract differ and SemVer gatekeeper in Rust"
  homepage "https://glastor.es"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/glastor-core/specter/releases/download/v#{version}/specter-macos-arm64"
      sha256 "fca80c76516dc98323dfe20e518c2490df8e008de13142d3738773819bc21716"
    end
    on_intel do
      url "https://github.com/glastor-core/specter/releases/download/v#{version}/specter-macos-x64"
      sha256 "e81700914d336e8000692f936e315b65b0ad5a146155ea1d304fd792b43e9a1d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/glastor-core/specter/releases/download/v#{version}/specter-linux-x64"
      sha256 "d1eb66d441bb6968eca307911ca0d83c471a3fe63fbedca5ad3737397072b588"
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
