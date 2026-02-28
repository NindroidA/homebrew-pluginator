class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.3.15"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.15/pluginator-2.3.15-darwin-arm64.tar.gz"
      sha256 "1622c124c2a95a84d4c21667c92fbe607b2a8040bf2148f54f3bf4ee4b24ab10"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.15/pluginator-2.3.15-darwin-x64.tar.gz"
      sha256 "80ea5a94bbb5774aedd003e09d2cc8513498c628701da55333a69a8fc3f1ce7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.15/pluginator-2.3.15-linux-arm64.tar.gz"
      sha256 "e4d1f283de4193c6750759f1e7dc64197ee5cec4e970035afeea21e438819f36"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.15/pluginator-2.3.15-linux-x64.tar.gz"
      sha256 "852340fbd5bda8d88fc98ff6aee7451be3c0f09b94e61ed1a74a9239dcfad171"
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
