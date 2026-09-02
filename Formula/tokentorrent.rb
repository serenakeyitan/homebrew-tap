class Tokentorrent < Formula
  desc "Connect a Mac to the TokenTorrent capacity marketplace"
  url "https://registry.npmjs.org/tokentorrent/-/tokentorrent-0.1.20.tgz"
  sha256 "fa84428db2e314bd425e70a4c1be2792367f64d68368cc5b5424ffb19692c0b7"
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
