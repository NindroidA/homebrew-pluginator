class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.4.16"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.16/pluginator-2.4.16-darwin-arm64.tar.gz"
      sha256 "0ac0be73a9d38d1efd98bbf07d3cbcc1dd7f7dd10bf8e73e32f852ce93c36d93"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.16/pluginator-2.4.16-darwin-x64.tar.gz"
      sha256 "28be039c243d7641dd6e6de349cd99ebd606e5d6a2538e033b8c1e129a1e54cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.16/pluginator-2.4.16-linux-arm64.tar.gz"
      sha256 "67e7d3b861c99d91c25ddfc4cd9d1fd37287769b958ac8cff737e14228e88d55"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.16/pluginator-2.4.16-linux-x64.tar.gz"
      sha256 "78695f1e94703505a6d7dbabdfb33b3917c35e9803148e08f83d92860ef7b599"
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
