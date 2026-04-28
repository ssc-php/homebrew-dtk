class Dtk < Formula
  desc "Kanban, Git and Deployment, in one coherent flow"
  homepage "https://github.com/ssc-php/dtk"
  license "MIT"
  version "0.3.1"

  on_macos do
    on_intel do
      url "https://github.com/ssc-php/dtk/releases/download/v#{version}/dtk-macos-x86_64"
      sha256 "9556a4bb095b45d520ecafa22cee8b464dee8ce21c011cf155eb1ce124d63631"
    end

    on_arm do
      url "https://github.com/ssc-php/dtk/releases/download/v#{version}/dtk-macos-aarch64"
      sha256 "8fff21c775a56b59054a3fb18eb5d06ad43b1eb5c201b8416f74a783f60a2ec5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ssc-php/dtk/releases/download/v#{version}/dtk-linux-x86_64"
      sha256 "58ba702e2efc6bf14324ae07ac53b5848861e983d5d5fdf2808410b8d34fd5cf"
    end

    on_arm do
      url "https://github.com/ssc-php/dtk/releases/download/v#{version}/dtk-linux-aarch64"
      sha256 "5d280d8439173373c733ac5cd3dafb4ae5a2bf06ae8b2be949b17e39d55656bf"
    end
  end

  def install
    bin.install Dir["dtk-*"].first => "dtk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dtk --version")
  end
end
