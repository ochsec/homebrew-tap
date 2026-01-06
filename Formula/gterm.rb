class Gterm < Formula
  desc "Flyweight IDE in your terminal - TUI code editor inspired by Geany"
  homepage "https://github.com/ochsec/gterm"
  version "0.3.1"
  license "GPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ochsec/gterm/releases/download/v\#{version}/gterm-v\#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f5ab3600e35b31b3c46ef0075886bd2ca0dc2d225aca88d09aa8aff35cd7be66"
    end
    on_intel do
      url "https://github.com/ochsec/gterm/releases/download/v\#{version}/gterm-v\#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "f2acead49d5c15141dd63be8a171dd57dc9676a57da986b3458b10dc1e1e16a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ochsec/gterm/releases/download/v\#{version}/gterm-v\#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5ee062f6e8e5ec9f8c8c8a88f107e6c0841eeca2cb3a3f828a58ba1541ea3cdd"
    end
    on_intel do
      url "https://github.com/ochsec/gterm/releases/download/v\#{version}/gterm-v\#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "be40cc2af12e3eddc84268811c790c461b74814e920b8f10fabf0f38f2cc245c"
    end
  end

  def install
    bin.install "gterm"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/gterm --version 2>&1", 1)
  end
end
