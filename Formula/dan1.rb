class Dan1 < Formula
  desc "DAN 1"
  homepage "https://github.com/dan1tools/dan1"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dan1tools/dan1/releases/download/v#{version}/dan1-macos-arm64.tar.gz"
      sha256 "ebf6f4a36087426c7bef4b52cb158674678d95ef96d2b5e7c89755e4bb398fe4"
    else
      url "https://github.com/dan1tools/dan1/releases/download/v#{version}/dan1-macos-x64.tar.gz"
      sha256 "854b03a5d755d7fceb56fcd50cd6c8ea69beee7c387e6afb177836b0c912cdca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dan1tools/dan1/releases/download/v#{version}/dan1-linux-arm64.tar.gz"
      sha256 "eb7e72d4d25e0e487215078d042dd9ba21e149263baec54315a37302eba3f6fc"
    else
      url "https://github.com/dan1tools/dan1/releases/download/v#{version}/dan1-linux-x64.tar.gz"
      sha256 "10f51be75de936170035999524bf09f430a2068d874d600c1bacb16453a1e106"
    end
  end

  def install
    bin.install "dan1"
  end

  test do
    assert_match "dan1 version #{version}", shell_output("#{bin}/dan1 --version")
  end
end
