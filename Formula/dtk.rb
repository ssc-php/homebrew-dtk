class Dtk < Formula
  desc "Kanban, Git and Deployment, in one coherent flow"
  homepage "https://github.com/ssc-php/dtk"
  license "MIT"
  version "0.4.0"

  on_macos do
    on_intel do
      url "https://github.com/ssc-php/dtk/releases/download/v#{version}/dtk-macos-x86_64"
      sha256 "86b1739f9944380ae21b33396440f38431ae589bc346d602d0990e3e766a5d2c"
    end

    on_arm do
      url "https://github.com/ssc-php/dtk/releases/download/v#{version}/dtk-macos-aarch64"
      sha256 "71a998d15ea564f4ebea2f02e172ce973376bcb0657697a2ef83ba9dffdf5f63"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ssc-php/dtk/releases/download/v#{version}/dtk-linux-x86_64"
      sha256 "7abad7f9e4a26a2899d1e25095ba14562685b8fdf44cc5698228cf4f35dd5698"
    end

    on_arm do
      url "https://github.com/ssc-php/dtk/releases/download/v#{version}/dtk-linux-aarch64"
      sha256 "043966ccf1f524909fa1515e917df92f30adaf648bc18544c0e5fdc007ad87f6"
    end
  end

  def install
    bin.install Dir["dtk-*"].first => "dtk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dtk --version")
  end
end
