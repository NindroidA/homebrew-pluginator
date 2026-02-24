class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.3.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.6/pluginator-2.3.6-darwin-arm64.tar.gz"
      sha256 "729818f031fd6c4c300882d45c0425c3d1247e133a63f07cb857579db287c80e"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.6/pluginator-2.3.6-darwin-x64.tar.gz"
      sha256 "d838ab3ddab8e2b0546c2bfdd353c3aaf203fed872114ad83ed4896598c2b726"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.6/pluginator-2.3.6-linux-arm64.tar.gz"
      sha256 "f2beb276b98275f6b76fd0cde6185153ba76a35090ca702af0262963419835ea"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.6/pluginator-2.3.6-linux-x64.tar.gz"
      sha256 "f40c192ae751f8131a7705aa4ce3bb6632ba487f8a6de9747837ed7bd7b83121"
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
