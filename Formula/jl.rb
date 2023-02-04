class Jl < Formula
  desc "JSON Logs, a development tool for working with structured JSON logging."
  homepage "https://github.com/koenbollen/jl"
  url "https://github.com/koenbollen/jl/releases/download/v1.5.0/jl_darwin_amd64"
  sha256 "cb570eafa65e5bddb224f485f7376e08e19e943b9c032ef9c827f53f2e1af46f"


  def install
    File.rename "jl_darwin_amd64", "jl"
    bin.install "jl"
  end

  test do
    system "echo '{\"msg\":\"works\"}' | #{bin}/jl | grep works"
  end
end
