class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.3.16"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.16/pluginator-2.3.16-darwin-arm64.tar.gz"
      sha256 "a2cac46e8da82145640bebed2c53a3d73de8457c226233bd2fa42b34cb31ca74"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.16/pluginator-2.3.16-darwin-x64.tar.gz"
      sha256 "922d3be4c58787895d5728795d7d332d12ae8bb5201c276e97725b621953ab86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.16/pluginator-2.3.16-linux-arm64.tar.gz"
      sha256 "0a16540732984cf9d4404d91d4e177f2824a8f17e3ac3a73969c061e57842b17"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.16/pluginator-2.3.16-linux-x64.tar.gz"
      sha256 "e944cbd4ae35dd865302f4afab7d4ff99f698d2bde0b9c709675e5639a1b4a28"
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
