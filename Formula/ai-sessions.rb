class AiSessions < Formula
  desc "Browse and resume Claude Code and Codex CLI sessions"
  homepage "https://github.com/yanirmanor/claude-sessions"
  url "https://github.com/yanirmanor/claude-sessions/archive/c73295bfea86709fdb6044b10d2a65251b522379.tar.gz"
  version "0.1.0"
  sha256 "3f4677c4e816c1a33047ce7944692825e170a53ffadbf697fe30b96bbbb01826"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "Browse sessions", shell_output("#{bin}/ai-sessions --help")
  end
end
