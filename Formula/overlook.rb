class Overlook < Formula
  desc "Terminal UI chat application for LLM providers"
  homepage "https://github.com/ochsec/overlook-tui"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ochsec/overlook-tui/releases/download/v#{version}/overlook-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9c57e9f1f6cb533352c4bec60cd5554dc4c31b6d1389f2250e17c10472e7285b"
    end
    on_intel do
      url "https://github.com/ochsec/overlook-tui/releases/download/v#{version}/overlook-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "80d3531bd6d6a01b004265b4b0835852ac248094ea6158f601b634010a3a50c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ochsec/overlook-tui/releases/download/v#{version}/overlook-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "269f8d1e1b42d3aeea0114b0c779b1d8d18dd16be80cb11d7c77d5a585113b55"
    end
    on_intel do
      url "https://github.com/ochsec/overlook-tui/releases/download/v#{version}/overlook-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6cc738ce607de4f5fa62f59d57c224c670e38585833ffbc3db167fecec5a02d9"
    end
  end

  def install
    bin.install "overlook" => "overlook"
  end

  test do
    system "#{bin}/overlook", "--version"
  end
end
