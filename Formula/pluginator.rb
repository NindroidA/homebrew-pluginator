class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.3.18"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.18/pluginator-2.3.18-darwin-arm64.tar.gz"
      sha256 "9b67caead5d2024037bbc0df1067f584da69fa2da55d5dfdf03126e51c738511"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.18/pluginator-2.3.18-darwin-x64.tar.gz"
      sha256 "2648a39fbd1bd4f3cd61b67a56146646bb78165df97ad8c78c98f480d0dbdeb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.18/pluginator-2.3.18-linux-arm64.tar.gz"
      sha256 "395a9d83fefebce1d1c533061c65df1052b23fdf4b5ea75040711fb0624a94f4"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.18/pluginator-2.3.18-linux-x64.tar.gz"
      sha256 "bbaab9d0c1f32df30728d25d4f28c56262ffd3a99dada6afe3a8c12d60d73471"
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
