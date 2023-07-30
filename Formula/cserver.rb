# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Cserver < Formula
  desc ""
  homepage "https://github.com/nomad10101/cloudback"
  version "0.0.37"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nomad10101/cloudback/releases/download/v0.0.37/cloudback_Darwin_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a84dad939817913600798922048b11f96366ec268e351c981923821e27706507"

      def install
        bin.install "cserver"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir["assets"]
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nomad10101/cloudback/releases/download/v0.0.37/cloudback_Darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "cf1d06e23cc57829651a2300e9493dc989f74a3ced86db1ca5ccf10bb3926334"

      def install
        bin.install "cserver"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir["assets"]
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nomad10101/cloudback/releases/download/v0.0.37/cloudback_Linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "bf9b3734a835d1b64ea5b2138485a4b31a449ab5b006f7bed07256f89a8bb8dc"

      def install
        bin.install "cserver"
        prefix.install Dir["assets"]
        prefix.install_symlink Dir["assets"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nomad10101/cloudback/releases/download/v0.0.37/cloudback_Linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "b743bb9d64a177e55fc15519b5c74b0f3b0e085123ff92545102d9eaa8f49f38"

      def install
        bin.install "cserver"
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

  service do
    run [opt_bin/"cserver", "--assets-path", opt_prefix/"assets", "service"]
    environment_variables BREW_OPT_HOME: opt_prefix
    keep_alive true
  end
end
