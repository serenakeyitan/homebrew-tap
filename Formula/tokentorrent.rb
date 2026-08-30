class Tokentorrent < Formula
  desc "Connect a Mac to the TokenTorrent capacity marketplace"
  homepage "https://tokentorrent.pages.dev"
  url "https://registry.npmjs.org/tokentorrent/-/tokentorrent-0.1.0.tgz"
  sha256 "885587cf8d1980d664732fc0ea608325af7ffc809d68032a9584753c2f71f0a8"
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
