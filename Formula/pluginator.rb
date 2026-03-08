class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.5.11"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.5.11/pluginator-2.5.11-darwin-arm64.tar.gz"
      sha256 "bc52423c9386dab139b31be7f467fb5136e37f79b17746a1f4654409d9a38b8d"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.5.11/pluginator-2.5.11-darwin-x64.tar.gz"
      sha256 "095d6c0cf8b5d4003956bee2554371220afe6e6299d34ead1804654a266b8b1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.5.11/pluginator-2.5.11-linux-arm64.tar.gz"
      sha256 "eba2393139a99a7754999466756ca65949833489e49640c18f757ba6d2c91f62"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.5.11/pluginator-2.5.11-linux-x64.tar.gz"
      sha256 "3e6fde3d45901b471e5746f234857c6a08837eb9fd4af2a99982b8f524123a87"
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
