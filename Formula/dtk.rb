class Dtk < Formula
  desc "Kanban, Git and Deployment, in one coherent flow"
  homepage "https://github.com/ssc-php/dtk"
  license "MIT"
  version "0.5.0"

  on_macos do
    on_intel do
      url "https://github.com/ssc-php/dtk/releases/download/v#{version}/dtk-macos-x86_64"
      sha256 "9bd4489bfa0ca70b0b13dd7bfb320cdcc4334e570042479441114a938f4c02b6"
    end

    on_arm do
      url "https://github.com/ssc-php/dtk/releases/download/v#{version}/dtk-macos-aarch64"
      sha256 "a44612e702565ada538a3cd325c111ad3e21c7a5c7626f52f061b593690cc809"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ssc-php/dtk/releases/download/v#{version}/dtk-linux-x86_64"
      sha256 "da7a783fd00eda98e5e721a1c5dee4008bb9635fcf5ce9e515f6dd824db517d4"
    end

    on_arm do
      url "https://github.com/ssc-php/dtk/releases/download/v#{version}/dtk-linux-aarch64"
      sha256 "f52a2a13c8add6e13f84744eaaaafb898139d4827478ff4ca3a7311562b2c6fb"
    end
  end

  def install
    bin.install Dir["dtk-*"].first => "dtk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dtk --version")
  end
end
