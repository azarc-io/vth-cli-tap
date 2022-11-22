# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VthCli < Formula
  desc "Verathread CLI"
  homepage "https://azarc.io/"
  version "1.30.0"
  license "Apache"

  on_macos do
    if Hardware::CPU.arm?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.30.0/vth-cli-1.30.0-Darwin-arm64.tar.gz"
      sha256 "15c17b330b128208dfa72ce265176b6ceae3a970019571209d591eded424474e"

      def install
        bin.install "vth2"
      end
    end
    if Hardware::CPU.intel?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.30.0/vth-cli-1.30.0-Darwin-x86_64.tar.gz"
      sha256 "8290bbcf766cd21777f74e6fd14a884c09adfb8102061d9060be4525ad6e50bf"

      def install
        bin.install "vth2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.30.0/vth-cli-1.30.0-Linux-x86_64.tar.gz"
      sha256 "ecfec84b71b7d0cf5b70b0a76430872cf8a841651136e84f55e10d1b6ac2c6c5"

      def install
        bin.install "vth2"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://vth-artifacts.s3.eu-west-1.amazonaws.com/cli_v2/v1.30.0/vth-cli-1.30.0-Linux-arm64.tar.gz"
      sha256 "64f525f25a24f27b0502bae516a3df4fe826ddefb0abba3a92aabdb36de81388"

      def install
        bin.install "vth2"
      end
    end
  end

  test do
    system "#{bin}/vth2 version"
  end
end
