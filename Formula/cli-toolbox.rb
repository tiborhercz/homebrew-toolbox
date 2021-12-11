# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CliToolbox < Formula
  desc "A collection of various cli tools"
  homepage "https://github.com/tiborhercz/cli-toolbox"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tiborhercz/cli-toolbox/releases/download/v0.1.8/cli-toolbox_0.1.8_darwin_amd64.tar.gz"
      sha256 "3dff2a9e6a6ae8f9aaf9c59fdf1b8af61cfe500b156a8d339b74d06bd4315de0"

      def install
        bin.install "cli-toolbox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tiborhercz/cli-toolbox/releases/download/v0.1.8/cli-toolbox_0.1.8_linux_amd64.tar.gz"
      sha256 "16184fac11828713b22dee9d480ed89004bd14365fec6678b6c5bce02daf1867"

      def install
        bin.install "cli-toolbox"
      end
    end
  end

  test do
    system "#{bin}/cli-toolbox -v"
  end
end
