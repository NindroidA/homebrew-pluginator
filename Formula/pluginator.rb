class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.3.20"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.20/pluginator-2.3.20-darwin-arm64.tar.gz"
      sha256 "d233ae18affdf55bb78c4ea332e61f77646e93c3891c2409341120639bf1c300"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.20/pluginator-2.3.20-darwin-x64.tar.gz"
      sha256 "7a1bde0bf77e36c16e68fa27bda8f9b23f395b5cd1cd9869dfdcccef6651442c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.20/pluginator-2.3.20-linux-arm64.tar.gz"
      sha256 "6501f4e2afff5cc5dbc1dce22d7800bfd9ffc8b90dc0b002ab462fc176d1d61b"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.20/pluginator-2.3.20-linux-x64.tar.gz"
      sha256 "4fef959f1184f80d2d6f52d213994a4b2e430b55ec533a0c531946c755f10820"
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
