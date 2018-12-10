class Jl < Formula
  desc "JSON Logs, a development tool for working with structured JSON logging."
  homepage "https://github.com/koenbollen/jl"
  url "https://github.com/koenbollen/jl/releases/download/v1.1.1/jl_darwin_amd64"
  sha256 "8776410b85a9a1396d54be4cf5b1779e40ddf7a1ca33497e231296f6a85d56ef"


  def install
    File.rename "jl_darwin_amd64", "jl"
    bin.install "jl"
  end

  test do
    system "echo '{\"msg\":\"works\"}' | #{bin}/jl | grep works"
  end
end
