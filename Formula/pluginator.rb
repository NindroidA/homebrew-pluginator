class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.3.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.2/pluginator-2.3.2-darwin-arm64.tar.gz"
      sha256 "74154334613d383e9956fd58d56b42e3fc05e30c3b6792800f638258730f5133"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.2/pluginator-2.3.2-darwin-x64.tar.gz"
      sha256 "e53c690d02620cd8d0d2b38e256b89c6a296f33f2708b5e18367f9ff494e3133"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.2/pluginator-2.3.2-linux-arm64.tar.gz"
      sha256 "ba70139a2c4e7dd01521eebfc18851ef56a59c1d1c77d05936bd6abd0dd3b0db"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.2/pluginator-2.3.2-linux-x64.tar.gz"
      sha256 "943d59e37bb0d149f7ded392b787f5d500c171f4e5b8953a5d68c9f6c47895f4"
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
