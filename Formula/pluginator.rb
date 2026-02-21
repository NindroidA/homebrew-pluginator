class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.3.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.1/pluginator-2.3.1-darwin-arm64.tar.gz"
      sha256 "013a8d46aed1b1536fe245cdd5e9ae092597f0eda7d724453098750ae3fa59bc"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.1/pluginator-2.3.1-darwin-x64.tar.gz"
      sha256 "80cab757e01ee775057624cee63ccf9969169ed1d631740516ca3cbb55336e2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.1/pluginator-2.3.1-linux-arm64.tar.gz"
      sha256 "65cac51bccc1ff630c92202675c8597e8be6e566a6627a10d37172c8ff1cc029"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.1/pluginator-2.3.1-linux-x64.tar.gz"
      sha256 "1092df855ffc5a74239333b11a962352aa5669d978413a09b65fd79e3741bdce"
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
