class Mdserve < Formula
  desc "Fast markdown preview server with live reload and theme support"
  homepage "https://github.com/jfernandez/mdserve"
  url "https://github.com/jfernandez/mdserve/archive/v0.1.0.tar.gz"
  sha256 "28845c690da9ee70e06beb40ba311097356dc81cc046c4fdc292e215e271dcdf"
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