# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VthCli < Formula
  desc "Verathread CLI"
  homepage "https://azarc.io/"
  version "1.0.0"
  license "Apache"

  on_macos do
    if Hardware::CPU.arm?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.0.0/vth-cli-1.0.0-Darwin-arm64.tar.gz"
      sha256 "0ad91b41a172a001748d26c86e530e48ed07a6b8a38722b0747dfd87810868d0"

      def install
        bin.install "vth2"
      end
    end
    if Hardware::CPU.intel?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.0.0/vth-cli-1.0.0-Darwin-x86_64.tar.gz"
      sha256 "da5e85b797fe12789394ad08d17ab74d9e8b306aab56da836bfb74744c10d63d"

      def install
        bin.install "vth2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.0.0/vth-cli-1.0.0-Linux-arm64.tar.gz"
      sha256 "6bba15e4825d97212145dfe72dfa56e24e698126354b44b41d552d29a3707afe"

      def install
        bin.install "vth2"
      end
    end
    if Hardware::CPU.intel?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.0.0/vth-cli-1.0.0-Linux-x86_64.tar.gz"
      sha256 "fa9c01404e04b677ac957b0bde4b6c208f32a619b8b7afb840d1565ee78b1b45"

      def install
        bin.install "vth2"
      end
    end
  end

  test do
    system "#{bin}/vth2 -v"
  end
end
