class Pluginator < Formula
  desc "Minecraft server plugin manager with multi-source updates"
  homepage "https://github.com/NindroidA/pluginator"
  version "2.3.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.0/pluginator-2.3.0-darwin-arm64.tar.gz"
      sha256 "af0b82c258ba4207d4fe90d6262ccfc08663753f33974404cee97c463a54d932"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.0/pluginator-2.3.0-darwin-x64.tar.gz"
      sha256 "7ee207476becd9c54549114cea0c663ff5fa733653ec8351bcc2ed217804148d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.0/pluginator-2.3.0-linux-arm64.tar.gz"
      sha256 "368e21f8331986dca185520e45e9bc844163c8f60a087a1abb037e62e7f4ff5c"
    end
    on_intel do
      url "https://github.com/NindroidA/pluginator/releases/download/v2.3.0/pluginator-2.3.0-linux-x64.tar.gz"
      sha256 "27f3efbe3cf132a13c068bb732ccea67304d29a37da957caae8c14ad8a6f2445"
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
