class Tokentorrent < Formula
  desc "Connect a Mac to the TokenTorrent capacity marketplace"
  url "https://registry.npmjs.org/tokentorrent/-/tokentorrent-0.1.28.tgz"
  sha256 "8dbf167d206a6a9579fb8aec3d3775a31734e1df0c2d3525c23bf83525c3b067"
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
