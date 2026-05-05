class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.12.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.12.2/pluginator-2.12.2-darwin-arm64.tar.gz"
      sha256 "e62ab0e6dd49950edd14cd3787d1e6552689a9cc0997f901d58301d6a27874bc"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.12.2/pluginator-2.12.2-darwin-x64.tar.gz"
      sha256 "3f93e58915b547384ed0962b9bf523b286d6d1f5e0bc6257e9cdaac26a521739"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.12.2/pluginator-2.12.2-linux-arm64.tar.gz"
      sha256 "8c9d7de9899165129352fcedb7b259bc22cca68c197fc013a745f0dac40a9d01"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.12.2/pluginator-2.12.2-linux-x64.tar.gz"
      sha256 "6b9cbc89c5a42a32279b7d87527167ddc4a144f6158774444fcb8ffd4ba8ba22"
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
