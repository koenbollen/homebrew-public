class Jl < Formula
  desc "JSON Logs, a development tool for working with structured JSON logging."
  homepage "https://github.com/koenbollen/jl"
  url "https://github.com/koenbollen/jl/releases/download/v1.6.0/jl_darwin_amd64"
  sha256 "1f9561d89c13cfcdb1814d3b8bca827b541c6b6bfa1ef7bf88af1c175ecf77cf"


  def install
    File.rename "jl_darwin_amd64", "jl"
    bin.install "jl"
  end

  test do
    system "echo '{\"msg\":\"works\"}' | #{bin}/jl | grep works"
  end
end
