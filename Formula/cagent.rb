# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cagent < Formula
  desc ""
  homepage "https://github.com/nomad10101/cloudback"
  version "0.0.31"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nomad10101/portola-release/releases/download/v0.0.31/portola-release_Darwin_x86_64.tar.gz"
      sha256 "9fa8015a3858dfd9cbc84c3d0e075d66f450eb667b4139d4d111d0a20425012d"

      def install
        bin.install "cagent"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir["assets"]
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nomad10101/portola-release/releases/download/v0.0.31/portola-release_Darwin_arm64.tar.gz"
      sha256 "2b99137462e45e4930e741fa665e747b4b807a20f12db53d788875de722efa7f"

      def install
        bin.install "cagent"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir["assets"]
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nomad10101/portola-release/releases/download/v0.0.31/portola-release_Linux_arm64.tar.gz"
      sha256 "23083b3ba2fdd002b1e7d3ef9029fc7c0e3bc9a94aaefe40b454f98dd0f960c6"

      def install
        bin.install "cagent"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir["assets"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nomad10101/portola-release/releases/download/v0.0.31/portola-release_Linux_x86_64.tar.gz"
      sha256 "4b0a828e36d0f1e889baa3239eefa5560ca78d6dd5b0e23e9aaae28d86657089"

      def install
        bin.install "cagent"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir["assets"]
      end
    end
  end

  def caveats
    <<~EOS
      ****************************************************************
      Listen up...
      ****************************************************************
    EOS
  end
end
