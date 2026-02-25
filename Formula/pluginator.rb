class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.3.8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.8/pluginator-2.3.8-darwin-arm64.tar.gz"
      sha256 "075650465a357ca2e774de3cc85fe623c24637a44a29497de62c71f9802ec255"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.8/pluginator-2.3.8-darwin-x64.tar.gz"
      sha256 "e1fdfa96475c3baac2f6570c7abc30b7c2ad9a6d522498d8601c858e775f982a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.8/pluginator-2.3.8-linux-arm64.tar.gz"
      sha256 "7927226a78303d761aa8598cfafcf1c5e22b6a773374cf970b064b9dab212cf2"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.8/pluginator-2.3.8-linux-x64.tar.gz"
      sha256 "ba6abb7c0fd3e187b067dad7d921b7f890ef7d307a5dcbdaae609bbd3b5503d5"
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
