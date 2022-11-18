# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VthCli < Formula
  desc ""
  homepage "https://azarc.io/"
  version "1.0.0"
  license "Apache"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/azarc-io/vth-cli/releases/download/v1.0.0/vth-cli-1.0.0-Darwin-arm64.tar.gz"
      sha256 "82e999e5993c2c113ea8c5fd082e28e767e924954825312d5fe520db63a3af55"

      def install
        bin.install "vth-cli-1.0.0-darwin-arm64"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/azarc-io/vth-cli/releases/download/v1.0.0/vth-cli-1.0.0-Darwin-x86_64.tar.gz"
      sha256 "82c16cca51d849d9b853420184cc14168afd213a630925add25a36a4d7767631"

      def install
        bin.install "vth-cli-1.0.0-darwin-amd64"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/azarc-io/vth-cli/releases/download/v1.0.0/vth-cli-1.0.0-Linux-arm64.tar.gz"
      sha256 "8d2120731cbb9b28e787552d4b3ea9914b96f794716023bc644306d43637c847"

      def install
        bin.install "vth-cli-1.0.0-linux-arm64"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/azarc-io/vth-cli/releases/download/v1.0.0/vth-cli-1.0.0-Linux-x86_64.tar.gz"
      sha256 "cea088668410af904f62463aab026941584e38dcc039a87577a4e67f8f63b247"

      def install
        bin.install "vth-cli-1.0.0-linux-amd64"
      end
    end
  end

  test do
    system "#{bin}/vth2 -v"
  end
end
