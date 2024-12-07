class Dan1 < Formula
  desc "DAN 1"
  homepage "https://github.com/dan1tools/dan1"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dan1tools/dan1/releases/download/v#{version}/dan1-macos-arm64.tar.gz"
      sha256 "979eac5bab310400e5582d33de8024d0b2ee6788a72618e0e1583265c64e6e21"
    else
      url "https://github.com/dan1tools/dan1/releases/download/v#{version}/dan1-macos-x64.tar.gz"
      sha256 "a50ee4db01ab00cc347fb5c9ff3c712a1ca834a7b1383e5c8c90a55ff2ce783c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dan1tools/dan1/releases/download/v#{version}/dan1-linux-arm64.tar.gz"
      sha256 "5dee00a8ab122b652028e90c328ee55be31acc72f6156f2cb7173c45bc603321"
    else
      url "https://github.com/dan1tools/dan1/releases/download/v#{version}/dan1-linux-x64.tar.gz"
      sha256 "bece0941f970d22b30fa51b19ec0e45539512b3e0f1c60aaddcc24b5456f6cad"
    end
  end

  def install
    bin.install "dan1"
  end

  test do
    assert_match "dan1 version #{version}", shell_output("#{bin}/dan1 --version")
  end
end
