class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.4.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.2/pluginator-2.4.2-darwin-arm64.tar.gz"
      sha256 "70e8cd5443f0f177915e3f2120d24b949c6037a8264d3b477fb46fa40fa21c42"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.2/pluginator-2.4.2-darwin-x64.tar.gz"
      sha256 "e6d3f247ecac7de014a2ed980f0152df8bfce766e8545f4fb417a3193f9636ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.2/pluginator-2.4.2-linux-arm64.tar.gz"
      sha256 "eba88a518e83f7d690492793c990f8b022b9b5af3207aefa71136f6297efc379"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.2/pluginator-2.4.2-linux-x64.tar.gz"
      sha256 "e20db11f3cfbec1804a1f71adef50a7d655972a298148e9e92ae25c5992aa8f1"
    end
  end

  def install
    # Binary name in the archive includes version and platform
    Dir.glob("pluginator-*").each do |f|
      bin.install f => "pluginator"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pluginator --version")
  end
end
