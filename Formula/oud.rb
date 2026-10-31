class Oud < Formula
  desc "Internet radio from every country, in the terminal"
  homepage "https://oud.so"
  license "MIT"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/oud-so/homebrew-tap/releases/download/v0.1.2/oud-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "337e07ce707135e93d32984cd02aa7b59fba824ba12734560d8689a7af519650"
    end
    on_intel do
      url "https://github.com/oud-so/homebrew-tap/releases/download/v0.1.2/oud-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "b673b287ce2e5abcbdf31bf415fefed06c2c16642fd4d5d7da27651e8bdbd06a"
    end
  end

  def install
    bin.install "oud"
  end

  test do
    assert_match "oud #{version}", shell_output("#{bin}/oud --version")
  end
end
