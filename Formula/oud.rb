class Oud < Formula
  desc "Internet radio from every country, in the terminal"
  homepage "https://oud.so"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/oud-so/homebrew-tap/releases/download/v0.1.0/oud-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "ecb9dde53302381a79cd699ba82613fdb8602ee0fc4f078c3998c839da7abfb4"
    end
    on_intel do
      url "https://github.com/oud-so/homebrew-tap/releases/download/v0.1.0/oud-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "5700dafa9e496f11bcc5898604b062be04b5536a9abdf7615da1f278a52051a0"
    end
  end

  def install
    bin.install "oud"
  end

  test do
    assert_match "oud #{version}", shell_output("#{bin}/oud --version")
  end
end
