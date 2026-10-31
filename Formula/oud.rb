class Oud < Formula
  desc "Internet radio from every country, in the terminal"
  homepage "https://oud.so"
  license "MIT"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/oud-so/homebrew-tap/releases/download/v0.1.1/oud-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "9ea8c0f24871ab93db0eef94f03a5e01c0fe4944d31b7d73dba2dec91ef32c9d"
    end
    on_intel do
      url "https://github.com/oud-so/homebrew-tap/releases/download/v0.1.1/oud-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "95c9a4d27602a43bbca1cc98e530348a2dcbd0237210cea2d03e4f53a80b891f"
    end
  end

  def install
    bin.install "oud"
  end

  test do
    assert_match "oud #{version}", shell_output("#{bin}/oud --version")
  end
end
