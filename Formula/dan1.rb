class YourApp < Formula
  desc "DAN1 CLI"
  homepage "https://github.com/dan1tools/dan1"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dan1tools/dan1/releases/download/v#{version}/dan1-macos-arm64.tar.gz"
      sha256 "your-macos-arm64-binary-sha256-here"
    else
      url "https://github.com/dan1tools/dan1/releases/download/v#{version}/dan1-macos-x86_64.tar.gz"
      sha256 "your-macos-x86_64-binary-sha256-here"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dan1tools/dan1/releases/download/v#{version}/dan1-linux-arm64.tar.gz"
      sha256 "your-linux-arm64-binary-sha256-here"
    else
      url "https://github.com/dan1tools/dan1/releases/download/v#{version}/dan1-linux-x86_64.tar.gz"
      sha256 "your-linux-x86_64-binary-sha256-here"
    end
  end

  def install
    bin.install "dan1"
  end

  test do
    assert_match "dan1 version #{version}", shell_output("#{bin}/dan1 --version")
  end
end
