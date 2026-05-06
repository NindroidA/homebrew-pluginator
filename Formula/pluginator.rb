class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.12.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.12.3/pluginator-2.12.3-darwin-arm64.tar.gz"
      sha256 "38c640ae8dcc7d1600676fade77971ba8a09bb8c0fafac9969debff7c7feaf95"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.12.3/pluginator-2.12.3-darwin-x64.tar.gz"
      sha256 "e9288445f004e716ad1f592b1193dbaad59cc894743d7493ba375b11ab82408c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.12.3/pluginator-2.12.3-linux-arm64.tar.gz"
      sha256 "f731fb947f76671df75617d562bf5bf77e235f30ca3e8215c8a65a3e7f86db8d"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.12.3/pluginator-2.12.3-linux-x64.tar.gz"
      sha256 "a382dfa3398abb5a1294abf0245b9c2b9ea8833504a09e16d3ca1ba3a2d475af"
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
