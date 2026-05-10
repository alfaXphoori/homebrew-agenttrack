class Atrack < Formula
  desc "Terminal CLI tool for tracking AI agent interactions"
  homepage "https://github.com/alfaXphoori/AgentTrack"
  version "0.13.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alfaXphoori/AgentTrack/releases/download/v0.13.8/AgentTrack_Darwin_arm64.tar.gz"
      sha256 "630e26dbc38f0e1a2afec67e94e8517fc2f501e65372da21886d81fe1c3ddfbc"
    else
      url "https://github.com/alfaXphoori/AgentTrack/releases/download/v0.13.8/AgentTrack_Darwin_x86_64.tar.gz"
      sha256 "7e1e2a94a21c58f5f4fc98e160779f411f23241784137abba909e8b2fe7ad857"
    end
  end

  def install
    bin.install "atrack"
  end

  test do
    assert_match "0.13.8", shell_output("#{bin}/atrack version")
  end
end
