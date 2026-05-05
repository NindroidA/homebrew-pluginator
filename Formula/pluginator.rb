class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.12.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.12.3/pluginator-2.12.3-darwin-arm64.tar.gz"
      sha256 "8aa38bbe02cd783e85bb33d6257cf6dee8c1b00875846874b540ee5ac3a0b5ad"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.12.3/pluginator-2.12.3-darwin-x64.tar.gz"
      sha256 "d867bd9e5bd035e7ce5cab0899fddab456a677d4efabba7d2b2e55ea9c06298f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.12.3/pluginator-2.12.3-linux-arm64.tar.gz"
      sha256 "13a3c1b8f84a92e136483bb48c385638ac84aa26858a886f22772dfbe0421429"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.12.3/pluginator-2.12.3-linux-x64.tar.gz"
      sha256 "ff9ee1c6ee949eb399f018fe8d3c0c68de58b34aa009ad19d1065c548d816b23"
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
