class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.4.18"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.18/pluginator-2.4.18-darwin-arm64.tar.gz"
      sha256 "b1209da0ead9cb477b363a13fd97042e3c4c6cb4bcd5269859bbabbc322f8e03"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.18/pluginator-2.4.18-darwin-x64.tar.gz"
      sha256 "f89988dbeb98d0f651bfba3aed8d0bf10f5d0584d28c477fb5a857ddbd03efdf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.18/pluginator-2.4.18-linux-arm64.tar.gz"
      sha256 "3cfa21646841821d923621b8da01017f95682160bf30897692770cb34213e344"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.18/pluginator-2.4.18-linux-x64.tar.gz"
      sha256 "f5f133f7cb3d0d4b2ca5cc300238b2d29e92fcda98d732ae555b1db1dd084cd5"
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
