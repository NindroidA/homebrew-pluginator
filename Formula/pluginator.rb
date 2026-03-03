class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.4.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.1/pluginator-2.4.1-darwin-arm64.tar.gz"
      sha256 "4dd02de578ce5ef0e4f2a3510464908ec11c2acb6ab72eb50a24a700f03bbc87"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.1/pluginator-2.4.1-darwin-x64.tar.gz"
      sha256 "7c4e69a40709629dd61214c5ba2c2fa551e314915b824c6d8a6907065911ab92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.1/pluginator-2.4.1-linux-arm64.tar.gz"
      sha256 "8c6ef0faa2a2b503e27048dcf86745068488fa0cfc2afc3a5a07daaf81bd35b8"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.1/pluginator-2.4.1-linux-x64.tar.gz"
      sha256 "2d86439c4b8f6ea53dd85fb0831bf893524dd607d83a55408628cd9ba989d9ef"
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
