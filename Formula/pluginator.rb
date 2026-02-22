class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.3.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.5/pluginator-2.3.5-darwin-arm64.tar.gz"
      sha256 "be3d0df5b3722bf9fc2b891e39fb32a05534b69179a8577d2bf3491cfef73146"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.5/pluginator-2.3.5-darwin-x64.tar.gz"
      sha256 "f2ef4288012efc910940cb59bd7434eb4b17f9f7d39b30ca9acde1aae852bca6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.5/pluginator-2.3.5-linux-arm64.tar.gz"
      sha256 "f1d96e6e3a972364c9c8aee78bb0d9827e0d489f6a1d89cd4edab59275dfc86b"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.5/pluginator-2.3.5-linux-x64.tar.gz"
      sha256 "cd69e0a6bef7a0f02359546cc9e854e232bd936f2d69a1183de3fb8c05042a51"
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
