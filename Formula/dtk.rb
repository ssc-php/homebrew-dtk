class Dtk < Formula
  desc "Kanban, Git and Deployment, in one coherent flow"
  homepage "https://github.com/ssc-php/dtk"
  license "MIT"
  version "0.2.0"

  on_macos do
    on_intel do
      url "https://github.com/ssc-php/dtk/releases/download/v#{version}/dtk-macos-x86_64"
      sha256 "172441a992d7b85d9c60a1de4b251a73b7dd23af4d1ddb9df2851154630aed6f"
    end

    on_arm do
      url "https://github.com/ssc-php/dtk/releases/download/v#{version}/dtk-macos-aarch64"
      sha256 "0fb5be242e2815d7fd986d6388c1ec0862dd3486649eeb5d918346a3c5ccf3c7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ssc-php/dtk/releases/download/v#{version}/dtk-linux-x86_64"
      sha256 "618971a3a885015bad74101df0422a644a4a7e8a9f52ff2ccd1b813d7c066aac"
    end

    on_arm do
      url "https://github.com/ssc-php/dtk/releases/download/v#{version}/dtk-linux-aarch64"
      sha256 "9d7529e8ab8a4543412be5540d2b5047ffe1951da243e54618872ab9dc898cc4"
    end
  end

  def install
    bin.install Dir["dtk-*"].first => "dtk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dtk --version")
  end
end
