class Zerho < Formula
  desc "Next-generation documentation engine for Deno & Edge"
  homepage "https://glastor.es"
  version "1.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/glastor-core/zerho/releases/download/v#{version}/zerho-darwin-arm64"
      sha256 "7c23670342929fb52e37ee1af1bd61c9fdce102ee56ead796299b6ce572fb588"
    end
    on_intel do
      url "https://github.com/glastor-core/zerho/releases/download/v#{version}/zerho-darwin-x86_64"
      sha256 "dd582c31f9207baede6c2db9a073afc26121a3c978c11d4ff13803e553ebd7c0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/glastor-core/zerho/releases/download/v#{version}/zerho-linux-x86_64"
      sha256 "9673e8a29aabea7de2e90d308ab41424203621444fe940d6b5a5cdb7969c7352"
    end
  end

  def install
    binary_name = Dir["zerho*"].first || (OS.mac? ? (Hardware::CPU.arm? ? "zerho-darwin-arm64" : "zerho-darwin-x86_64") : "zerho-linux-x86_64")
    bin.install binary_name => "zerho"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zerho --version")
  end
end
