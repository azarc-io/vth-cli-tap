# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VthCli < Formula
  desc "Verathread CLI"
  homepage "https://azarc.io/"
  version "1.9.0"
  license "Apache"

  on_macos do
    if Hardware::CPU.arm?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.9.0/vth-cli-1.9.0-Darwin-arm64.tar.gz"
      sha256 "27f33d6eb37c891426fc8dc948a87a250df544a12ce958b807f8bb526f57fa56"

      def install
        bin.install "vth2"
      end
    end
    if Hardware::CPU.intel?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.9.0/vth-cli-1.9.0-Darwin-x86_64.tar.gz"
      sha256 "1c5edd28543bb18b4839658105364be2ad320ddee8472e4f6d692952697c4746"

      def install
        bin.install "vth2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.9.0/vth-cli-1.9.0-Linux-arm64.tar.gz"
      sha256 "f96121ea1499f6ba001e1a0605b849bded5f3c68e3bbbdeed726d5b6e4646bc5"

      def install
        bin.install "vth2"
      end
    end
    if Hardware::CPU.intel?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.9.0/vth-cli-1.9.0-Linux-x86_64.tar.gz"
      sha256 "f875d9a31d282dd906fafcb33d3bb84bbae2198037a319aa3820741ac39fb8e6"

      def install
        bin.install "vth2"
      end
    end
  end

  test do
    system "#{bin}/vth2 version"
  end
end
