class Lodestar < Formula
  desc "Session context synthesis for Claude Code and other AI coding tools"
  homepage "https://kylex.io"
  version "0.3.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Kgard/lodestar-releases/releases/download/v0.3.2/lodestar-macos-arm64.tar.gz"
      sha256 "7b20a1a4c76d03a0cb505757153bbeae85127920c96a98f636edc279931681e5"
    end
    on_intel do
      url "https://github.com/Kgard/lodestar-releases/releases/download/v0.3.2/lodestar-macos-x64.tar.gz"
      sha256 "66b8a0e2f90d8490c343660f5f7873bfa4802d56c3d311f5efbb04e5a6f58181"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Kgard/lodestar-releases/releases/download/v0.3.2/lodestar-linux-x64.tar.gz"
      sha256 "2dab76f83f473d76cf214cb56726eb6055c67a2dfb6d2a271e40d0d3cc7d6644"
    end
  end

  def install
    bin.install "lodestar"
  end

  test do
    assert_match "Lodestar", shell_output("#{bin}/lodestar help")
  end
end
