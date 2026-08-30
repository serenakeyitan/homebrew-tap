class Tokentorrent < Formula
  desc "Connect a Mac to the TokenTorrent capacity marketplace"
  url "https://registry.npmjs.org/tokentorrent/-/tokentorrent-0.1.1.tgz"
  sha256 "90e9f004be3a693e706dbe7ca97f60d949a5a628c4d212cbc04f5d3adb013149"
  license :cannot_represent

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir[libexec/"bin/*"]
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/tokentorrent --version").strip
  end
end
