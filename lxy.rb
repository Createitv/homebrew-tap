class Lxy < Formula
  desc "LingXiaoYao public knowledge terminal"
  homepage "https://cli.lingxiaoyao.cn"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Createitv/agent-for-app/releases/download/lxy/v0.1.0/lxy_0.1.0_darwin_arm64.tar.gz"
      sha256 "09cb8835de780335ab21c69b2b94cb0656878aa0f41e7e5b3f0662e98700f41a"
    else
      url "https://github.com/Createitv/agent-for-app/releases/download/lxy/v0.1.0/lxy_0.1.0_darwin_amd64.tar.gz"
      sha256 "202c92a32c1b5dcca21c2bf4ace831a64e1d8f053de965171ca64f18a47e3090"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Createitv/agent-for-app/releases/download/lxy/v0.1.0/lxy_0.1.0_linux_arm64.tar.gz"
      sha256 "df3ddc7bfcfe0b177933cd5d437f621cd21fe5e898497d38bc313a283a6289f5"
    else
      url "https://github.com/Createitv/agent-for-app/releases/download/lxy/v0.1.0/lxy_0.1.0_linux_amd64.tar.gz"
      sha256 "0a88cecf04d51b87a5a11b68b7e87b63728800243c660b9c3e8839b589d2e53a"
    end
  end

  def install
    bin.install "lxy"
  end

  test do
    system "#{bin}/lxy", "version"
  end
end
