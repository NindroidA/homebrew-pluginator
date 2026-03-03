class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.3.19"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.19/pluginator-2.3.19-darwin-arm64.tar.gz"
      sha256 "ef06b1290e2ebb59674553ca6e63b0c5a99498c3b6329459cbbef078d7ef1dba"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.19/pluginator-2.3.19-darwin-x64.tar.gz"
      sha256 "5b3760964bc52a398770b18ad44b1e92ba5657d9631fbb7c24dba109a2e1e079"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.19/pluginator-2.3.19-linux-arm64.tar.gz"
      sha256 "5dfb7052d5fae523557cf416f921760300b5da2709cdcc7b03473249ee873dd0"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.19/pluginator-2.3.19-linux-x64.tar.gz"
      sha256 "f60ce4d79387c72cbaf8d5a81b632ceb35f4b11672b874d6a2fb6fcc94303f2e"
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
