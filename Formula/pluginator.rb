class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.12.10"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.12.10/pluginator-2.12.10-darwin-arm64.tar.gz"
      sha256 "78e609b74b2a9995fe5cf81ec9d5c359288e709d6ae0d5ccfeb99cb4d7802b22"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.12.10/pluginator-2.12.10-darwin-x64.tar.gz"
      sha256 "c6a91126e5542ef42360146579a667efd360647b9fae62284db770366129ae82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.12.10/pluginator-2.12.10-linux-arm64.tar.gz"
      sha256 "e644adc56409107937eaab204c869a399fd620ad9201a94c3102e5fb97c8b20a"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.12.10/pluginator-2.12.10-linux-x64.tar.gz"
      sha256 "99bf3e372c2c5336b8539a8167be6814f6b5c8bb2c85551ea3c8858019cee4dc"
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
