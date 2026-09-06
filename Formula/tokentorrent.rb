class Tokentorrent < Formula
  desc "Connect a Mac to the TokenTorrent capacity marketplace"
  url "https://registry.npmjs.org/tokentorrent/-/tokentorrent-0.1.29.tgz"
  sha256 "8b87841f2625c83afa86c9e9948e7c666d371ab7e6e2035e9e9c66e8291e32b0"
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
