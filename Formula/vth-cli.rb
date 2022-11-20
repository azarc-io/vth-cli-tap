# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VthCli < Formula
  desc "Verathread CLI"
  homepage "https://azarc.io/"
  version "1.6.0"
  license "Apache"

  on_macos do
    if Hardware::CPU.intel?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.6.0/vth-cli-1.6.0-Darwin-x86_64.tar.gz"
      sha256 "a319c0f52a2202a208d1474d5e56e036b9bfebd923d64f8479754e2d580b6bd9"

      def install
        bin.install "vth2"
      end
    end
    if Hardware::CPU.arm?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.6.0/vth-cli-1.6.0-Darwin-arm64.tar.gz"
      sha256 "f17865c2198838f3b04b1a726bf5f373673cc17dba923fada1cbbdd7d3760d58"

      def install
        bin.install "vth2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.6.0/vth-cli-1.6.0-Linux-arm64.tar.gz"
      sha256 "6d008e70ce7a80756db0227a962b6691cc17f08b87f347caef0f06b8a7b8e129"

      def install
        bin.install "vth2"
      end
    end
    if Hardware::CPU.intel?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.6.0/vth-cli-1.6.0-Linux-x86_64.tar.gz"
      sha256 "ca40cc940e7cfdd23cfd56006433b25adb2fce7afabeff1c51c755d4f4725124"

      def install
        bin.install "vth2"
      end
    end
  end

  test do
    system "#{bin}/vth2 version"
  end
end
