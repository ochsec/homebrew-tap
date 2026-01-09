class Overlook < Formula
  desc "Terminal UI chat application for LLM providers"
  homepage "https://github.com/ochsec/overlook-tui"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ochsec/overlook-tui/releases/download/v#{version}/overlook-tui-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9557007c272a829c38c6f993e3be215e366932f8f92fbbb3abb66e54e2bfadde"
    end
    on_intel do
      url "https://github.com/ochsec/overlook-tui/releases/download/v#{version}/overlook-tui-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "dbb1286e876f8462b488d83589134c7aa39581159c8c5ca593472a45213e2218"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ochsec/overlook-tui/releases/download/v#{version}/overlook-tui-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dd06946b20822e3309afe69130df89553cccc5b7fef00cbe5965b0401a64c953"
    end
    on_intel do
      url "https://github.com/ochsec/overlook-tui/releases/download/v#{version}/overlook-tui-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b972de02219caf0c4cad65c3655cb448a0bfac92850f0eb9e142bd36d6048874"
    end
  end

  def install
    bin.install "overlook-tui" => "overlook"
  end

  test do
    system "#{bin}/overlook", "--version"
  end
end
