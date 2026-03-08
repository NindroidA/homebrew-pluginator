class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.5.10"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.5.10/pluginator-2.5.10-darwin-arm64.tar.gz"
      sha256 "ac39582455baaea3faef09c330583f7fad075d81b6b07b7dfd3e70d306184692"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.5.10/pluginator-2.5.10-darwin-x64.tar.gz"
      sha256 "fd5d69eedaaacbb1e5782a787d6b8c0c58df6846d22c2d278b3e33ff78f95c57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.5.10/pluginator-2.5.10-linux-arm64.tar.gz"
      sha256 "82e24f75d43a5ad9f79a862e96373af8367774cd6b18214780e31db025ef5e62"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.5.10/pluginator-2.5.10-linux-x64.tar.gz"
      sha256 "c725e7dfe4349053c86023fbff02f950134ba79a8104cc32f47501e9a41b7b9a"
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
