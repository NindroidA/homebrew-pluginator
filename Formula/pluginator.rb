class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.3.17"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.17/pluginator-2.3.17-darwin-arm64.tar.gz"
      sha256 "019347cb06a3d723a96548dc9366efac5eeadff5d06c5b9b3b041969f47ad015"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.17/pluginator-2.3.17-darwin-x64.tar.gz"
      sha256 "8b64a18282558e101faa26522e5fee33112f94385d0e4de2b4997d6fe66071bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.17/pluginator-2.3.17-linux-arm64.tar.gz"
      sha256 "e6e8700450e40aadd3e5c180ca5626ebebc01412c97644475fd083c128aa00e7"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.17/pluginator-2.3.17-linux-x64.tar.gz"
      sha256 "b38f4f5fbf92a1ae9803cbf1fd0a3adb595c00d232dfe1604ac44eb7f6b70c0c"
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
