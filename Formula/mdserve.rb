class Mdserve < Formula
  desc "Fast markdown preview server with live reload and theme support"
  homepage "https://github.com/jfernandez/mdserve"
  url "https://github.com/jfernandez/mdserve/archive/v0.2.0.tar.gz"
  sha256 "30256fa8ed39c2ed10d52e91d81316cb3102acf2ced418f5808727784ccaaee1"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # Test that the binary exists and shows help
    system "#{bin}/mdserve", "--help"

    # Test that it can start (will fail quickly without a markdown file, but that's expected)
    output = shell_output("#{bin}/mdserve nonexistent.md 2>&1", 1)
    assert_match "No such file or directory", output
  end
end