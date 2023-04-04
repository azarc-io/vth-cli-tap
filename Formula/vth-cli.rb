# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VthCli < Formula
  desc "Verathread CLI"
  homepage "https://azarc.io/"
  version "1.58.0"
  license "Apache"

  on_macos do
    if Hardware::CPU.arm?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.58.0/vth-cli-1.58.0-Darwin-arm64.tar.gz"
      sha256 "a0614cdd53418be16e3635907e6111a12d15cdc892610ef9bc435e0913b6de5e"

      def install
        bin.install "vth2"
      end
    end
    if Hardware::CPU.intel?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.58.0/vth-cli-1.58.0-Darwin-x86_64.tar.gz"
      sha256 "749f55f8c87a386c8bb076400d4e40bcfa16d9fefac05e04f8f5fe573f2a253d"

      def install
        bin.install "vth2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.58.0/vth-cli-1.58.0-Linux-arm64.tar.gz"
      sha256 "43b3f04e36cbf2edf8bd0dcf2fc65b490603b1bdf43e81ec07becac9e7eb58ee"

      def install
        bin.install "vth2"
      end
    end
    if Hardware::CPU.intel?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.58.0/vth-cli-1.58.0-Linux-x86_64.tar.gz"
      sha256 "4568317fd0f31eb3279e76a62d547398a513944d7c489c299b33fa06b4b4869a"

      def install
        bin.install "vth2"
      end
    end
  end

  test do
    system "#{bin}/vth2 version"
  end
end
