class Jl < Formula
  desc "JSON Logs, a development tool for working with structured JSON logging."
  homepage "https://github.com/koenbollen/jl"
  url "https://github.com/koenbollen/jl/releases/download/v1.6.0/jl_darwin_amd64"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"


  def install
    File.rename "jl_darwin_amd64", "jl"
    bin.install "jl"
  end

  test do
    system "echo '{\"msg\":\"works\"}' | #{bin}/jl | grep works"
  end
end
