class Jl < Formula
  desc "JSON Logs, a development tool for working with structured JSON logging."
  homepage "https://github.com/koenbollen/jl"
  url "https://github.com/koenbollen/jl/releases/download/v1.1.0/jl_darwin_amd64"
  sha256 "8fba83c623145e2144528ddd1d24389f77508422cd55ef2321efb578538f660c"

  def install
    File.rename "jl_darwin_amd64", "jl"
    bin.install "jl"
  end

  test do
    system "echo '{\"msg\":\"works\"}' | #{bin}/jl | grep works"
  end
end
