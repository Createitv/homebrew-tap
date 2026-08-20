class Lxy < Formula
  desc "LingXiaoYao public knowledge terminal"
  homepage "https://cli.lingxiaoyao.cn"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Createitv/lxy-releases/releases/download/lxy-v0.1.0/lxy_0.1.0_darwin_arm64.tar.gz"
      sha256 "d66e0c9d2a0c9e0f91387afa72f6fa199be444664277a01e3cbb533db39e7892"
    else
      url "https://github.com/Createitv/lxy-releases/releases/download/lxy-v0.1.0/lxy_0.1.0_darwin_amd64.tar.gz"
      sha256 "a1544975d43c596dac827f072d83e2be2924e98aa0aab6690f6fe1f8bca768a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Createitv/lxy-releases/releases/download/lxy-v0.1.0/lxy_0.1.0_linux_arm64.tar.gz"
      sha256 "64892cb5555a35302fd6caa5b9a8c0ad5f1e6190950c51ae744c093142660c33"
    else
      url "https://github.com/Createitv/lxy-releases/releases/download/lxy-v0.1.0/lxy_0.1.0_linux_amd64.tar.gz"
      sha256 "d5fecceda24592f247ca313328b0df7212cd7d01db7ecfafc1ce5eb9762ce4b7"
    end
  end

  def install
    bin.install "lxy"
  end

  test do
    system "#{bin}/lxy", "version"
  end
end
