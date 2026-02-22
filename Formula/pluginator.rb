class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.3.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.3/pluginator-2.3.3-darwin-arm64.tar.gz"
      sha256 "ec3096ef128cc8d387623ed4f9fef855bab418d3d6a6fd29e9d95b46cf01159b"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.3/pluginator-2.3.3-darwin-x64.tar.gz"
      sha256 "ee095badbd3708ccc3066ae0bc5acaf17298d95f946f371ed2b2a45fa389731c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.3/pluginator-2.3.3-linux-arm64.tar.gz"
      sha256 "2eb74712eef995ca3827eb6ee3c1a597c938cbf265f59f6bbb7eff12aa446a9d"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.3/pluginator-2.3.3-linux-x64.tar.gz"
      sha256 "60e942c9611a63ffb4279236e2da799a929d27a2f2a319ecf40737b696662390"
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
