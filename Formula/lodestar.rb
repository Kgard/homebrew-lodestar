class Lodestar < Formula
  desc "Session context synthesis for Claude Code and other AI coding tools"
  homepage "https://kylex.io"
  version "0.3.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Kgard/lodestar-releases/releases/download/v0.3.1/lodestar-macos-arm64.tar.gz"
      sha256 "540f61d602d25c1c55d3efa0235c5955cbf4ee3915e1b45ee20fa7f0885ed031"
    end
    on_intel do
      url "https://github.com/Kgard/lodestar-releases/releases/download/v0.3.1/lodestar-macos-x64.tar.gz"
      sha256 "8169a68b1bee849180cafaec86f023c47250c50cc7801144d4b32337bed62d67"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Kgard/lodestar-releases/releases/download/v0.3.1/lodestar-linux-x64.tar.gz"
      sha256 "c292f626c394e2b68b6dc44dbe86c0b884cb3ddfacb6374aa1c069a4906822af"
    end
  end

  def install
    bin.install "lodestar"
  end

  test do
    assert_match "Lodestar", shell_output("#{bin}/lodestar help")
  end
end
