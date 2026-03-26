class Dtk < Formula
  desc "Kanban, Git and Deployment, in one coherent flow"
  homepage "https://github.com/ssc-php/dtk"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_intel do
      url "https://github.com/ssc-php/dtk/releases/download/v#{version}/dtk-macos-x86_64"
      sha256 "3e44b1c8583b9f5cc140acbc43726de81fb8a151c0afc43e1152729c9a06213b"
    end

    on_arm do
      url "https://github.com/ssc-php/dtk/releases/download/v#{version}/dtk-macos-aarch64"
      sha256 "957953df74861df6cb8f975c4864f4495277c63cdd8b73fa20f9884dd2538ca0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ssc-php/dtk/releases/download/v#{version}/dtk-linux-x86_64"
      sha256 "4870846397532db7e513b39cabfd3b6fba426fbb3232190480ffc2368a51da27"
    end

    on_arm do
      url "https://github.com/ssc-php/dtk/releases/download/v#{version}/dtk-linux-aarch64"
      sha256 "e4674f606d96fcbf2fe80505d26a4f260ef27f488b5d0e56e5193f54a9ebd263"
    end
  end

  def install
    bin.install Dir["dtk-*"].first => "dtk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dtk --version")
  end
end
