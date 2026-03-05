class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.4.19"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.19/pluginator-2.4.19-darwin-arm64.tar.gz"
      sha256 "a8f39a94018614200cc8c3bbf8975d572deb2af2a9bca3037615aa3cc3b1e7d7"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.19/pluginator-2.4.19-darwin-x64.tar.gz"
      sha256 "7809dd4bb84352793defc8a6333eaeb4dbcdaee0cd18c464c2ccaa0897856597"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.19/pluginator-2.4.19-linux-arm64.tar.gz"
      sha256 "50a43ec2492dd5bc3892431b6b40ef363d39f0465e3059c2b2fda1f44caafe15"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.4.19/pluginator-2.4.19-linux-x64.tar.gz"
      sha256 "0a514abd1330f29b135c40d78e2bbfec3f79bb710d4f204bf703ca170c7a8455"
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
