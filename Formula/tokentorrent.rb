class Tokentorrent < Formula
  desc "Connect a Mac to the TokenTorrent capacity marketplace"
  url "https://registry.npmjs.org/tokentorrent/-/tokentorrent-0.1.30.tgz"
  sha256 "3b35e7a14d377a911c1a334793870b324062b37358b30cb673d13f6e0e0049ab"
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
