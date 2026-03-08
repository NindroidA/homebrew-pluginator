class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.5.9"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.5.9/pluginator-2.5.9-darwin-arm64.tar.gz"
      sha256 "a5b4d8cc8f0db93046c402143b247f0cc51be0af176d92161bb5444368b44f60"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.5.9/pluginator-2.5.9-darwin-x64.tar.gz"
      sha256 "48e78f3c39ed12ba99d921ab43a142d66122d747dd121893499e3fbf8c0f1511"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.5.9/pluginator-2.5.9-linux-arm64.tar.gz"
      sha256 "ec6558d24fbf2fe7d468a681c1f75ce20e5782807ee7a2b5c99cc6618bdecdcb"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.5.9/pluginator-2.5.9-linux-x64.tar.gz"
      sha256 "44fdfb93394868aa614a83b0b502097a47636f6f8ee62d3c91ce41bac91183d8"
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
