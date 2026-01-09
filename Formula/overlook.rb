class Overlook < Formula
  desc "Terminal UI chat application for LLM providers"
  homepage "https://github.com/ochsec/overlook-tui"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ochsec/overlook-tui/releases/download/v#{version}/overlook-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "bf3e8434f7585dd5a97642ec636037ce3a1aac1fd826445d9afe7cf1d1120552"
    end
    on_intel do
      url "https://github.com/ochsec/overlook-tui/releases/download/v#{version}/overlook-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "15247ba53a8a20eb7c1a6857949329aac38243d2987a7a0cc6b1de616399712c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ochsec/overlook-tui/releases/download/v#{version}/overlook-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d24df945c74acef9dce16a328bfc7f739a6483037a7aa9912a09ec5e53723c8e"
    end
    on_intel do
      url "https://github.com/ochsec/overlook-tui/releases/download/v#{version}/overlook-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f874a8104c0bc9572476f085e1f222d363f1b448915cf6d2eefcc123200e0a86"
    end
  end

  def install
    bin.install "overlook" => "overlook"
  end

  test do
    system "#{bin}/overlook", "--version"
  end
end
