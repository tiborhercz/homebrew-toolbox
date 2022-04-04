# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CliToolbox < Formula
  desc "A collection of various cli tools"
  homepage "https://github.com/tiborhercz/cli-toolbox"
  version "0.5.5"
  license "MIT"

  on_macos do
    url "https://github.com/tiborhercz/cli-toolbox/releases/download/v0.5.5/cli-toolbox_0.5.5_darwin_amd64.tar.gz"
    sha256 "c05287bd6e16628768bfde338c6cea9d6103819b6d6ab16c521c951559a8ab70"

    def install
      bin.install "cli-toolbox"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the CliToolbox
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tiborhercz/cli-toolbox/releases/download/v0.5.5/cli-toolbox_0.5.5_linux_amd64.tar.gz"
      sha256 "7d2eee0b69da186ec5ee2b3790e34289a3e36252db2569c93546e8466d30dfa9"

      def install
        bin.install "cli-toolbox"
      end
    end
  end

  test do
    system "#{bin}/cli-toolbox -v"
  end
end
