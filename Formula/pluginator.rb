class Pluginator < Formula
  desc "A sophisticated Minecraft server plugin manager with multi-source update checking, sync/backup workflows, and a modern terminal UI"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.3.7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.7/pluginator-2.3.7-darwin-arm64.tar.gz"
      sha256 "75322176310aa419b87884da589248f24286a937d0b998a21ea3badc3a934b4a"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.7/pluginator-2.3.7-darwin-x64.tar.gz"
      sha256 "4e53d43b7b78e9a64c7db14aa0c694880d0bc0dd46817af16864f26ae71b0558"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.7/pluginator-2.3.7-linux-arm64.tar.gz"
      sha256 "317c62e85dcf397dda0c501d6d487e2d22b9cd0f56a699c52df1bf41af90c52e"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.7/pluginator-2.3.7-linux-x64.tar.gz"
      sha256 "100cb8158ecc7f7af5c0d4a5642b06a271f62d186456197c56566fa5c5eaf50d"
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
