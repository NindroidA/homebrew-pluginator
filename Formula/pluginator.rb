class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.3.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.4/pluginator-2.3.4-darwin-arm64.tar.gz"
      sha256 "258d2ae6e85542fbf899db2842640bd074d6e6256cd1a7ccd8d17abb5f56c2f7"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.4/pluginator-2.3.4-darwin-x64.tar.gz"
      sha256 "f2fc9bd1cf602d34b1f3dafd84a1e189375267f8217f31284ec14b88d31ec623"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.4/pluginator-2.3.4-linux-arm64.tar.gz"
      sha256 "03044264815dbce4550bd8b63f3ac5a50e872efe85966c6c03d30ccd9ea72046"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.4/pluginator-2.3.4-linux-x64.tar.gz"
      sha256 "784afcaaab28a0cabe83684bcf4a7e70cbcc80290f1ef60a2a61eeffab785cca"
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
