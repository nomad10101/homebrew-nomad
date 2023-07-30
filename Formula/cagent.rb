# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cagent < Formula
  desc ""
  homepage "https://github.com/nomad10101/cloudback"
  version "0.0.32"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nomad10101/portola-release/releases/download/v0.0.32/portola-release_Darwin_arm64.tar.gz"
      sha256 "3ee6ec1d29c62432014ec860aeb4e65ec395531f13fbd75749810909e60c3761"

      def install
        bin.install "cagent"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir["assets"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nomad10101/portola-release/releases/download/v0.0.32/portola-release_Darwin_x86_64.tar.gz"
      sha256 "459b0bf47f322d4b709f8b96a1cccd9a15be92b2be1ee449d0f1ef0fb8b09ee2"

      def install
        bin.install "cagent"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir["assets"]
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nomad10101/portola-release/releases/download/v0.0.32/portola-release_Linux_x86_64.tar.gz"
      sha256 "c0e860c6bca015ae6ed7e7b78900d590ae30510efa9c4058323de37c4824f33e"

      def install
        bin.install "cagent"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir["assets"]
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nomad10101/portola-release/releases/download/v0.0.32/portola-release_Linux_arm64.tar.gz"
      sha256 "111d9b9ff6614cd32d40e8e93a6882115cb08f8d68cd8747228fdb3e664543b3"

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
