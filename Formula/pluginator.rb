class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.4.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.0/pluginator-2.4.0-darwin-arm64.tar.gz"
      sha256 "ff5a942026f24e29efdc3f6df9e88a33d6b3c0320cfdfe7925b19b45fdc051a1"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.0/pluginator-2.4.0-darwin-x64.tar.gz"
      sha256 "94b3877abffeef27e3cfee2758ae40590bb823633634fa026b17e8383dd25cde"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.0/pluginator-2.4.0-linux-arm64.tar.gz"
      sha256 "c046e5447594793c2272c2e8c7c88f1a8b0c1af975a967ea43f9a99204ea28c4"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.0/pluginator-2.4.0-linux-x64.tar.gz"
      sha256 "c6957d5e2152698bec8d3e5c88a59b4069e5d2df5445440e865d02c6c4f4f534"
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
