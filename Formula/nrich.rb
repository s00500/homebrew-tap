class Nrich < Formula
  desc "Shell extension to navigate your filesystem faster"
  homepage "https://gitlab.com/shodan-public/nrich/"
  url "https://gitlab.com/shodan-public/nrich/-/archive/0.3.0/nrich-0.3.0.tar.gz"
  sha256 "2c7d6ebda41351472379a354228be1051df8818a350fcbe57278fbc37f5d7d3c"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_equal "", shell_output("#{bin}/nrich version").strip
  end
end
