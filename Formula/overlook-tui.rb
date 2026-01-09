class OverlookTui < Formula
  desc "Terminal UI chat application for LLM providers"
  homepage "https://github.com/ochsec/overlook-tui"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ochsec/overlook-tui/releases/download/v.#{version}/overlook-v.#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "252c3e48d08a1e32a6dbffbde954d85e661e8063d87f9a9603e8a1bb6f5eab19"
    end
    on_intel do
      url "https://github.com/ochsec/overlook-tui/releases/download/v.#{version}/overlook-v.#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "448d08cba317a9cce06939f0384609f9abdc43909513f8dab909df5761fc46bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ochsec/overlook-tui/releases/download/v.#{version}/overlook-v.#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b6e8bf6fb99faafd85018a7fb2bf12dc1d5a5dc60faaadeb962ba7e8e9bc23c2"
    end
    on_intel do
      url "https://github.com/ochsec/overlook-tui/releases/download/v.#{version}/overlook-v.#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "21d7f76df290cd450227cfdc540d617780a62a4aa4ad03035b858b9b488b3095"
    end
  end

  def install
    bin.install "overlook" => "overlook"
  end

  test do
    system "#{bin}/overlook", "--version"
  end
end
