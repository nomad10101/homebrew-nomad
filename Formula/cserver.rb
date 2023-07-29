# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Cserver < Formula
  desc ""
  homepage "https://github.com/nomad10101/cloudback"
  version "0.0.26"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nomad10101/cloudback/releases/download/v0.0.26/cloudback_Darwin_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "5b4bc2ca9dbc92777cba2cfc2be117e0c3ce2c85e6b8f6a09ef7c4a9397c29ef"

      def install
        bin.install "cserver"
        prefix.install Dir["assets"]
        etc.install Dir["assets"]
        prefix.install_symlink Dir["assets"]
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nomad10101/cloudback/releases/download/v0.0.26/cloudback_Darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "6204effd3dd9ea338d813aae724ccc21295b09dede2985fe7984a1e55533ab1f"

      def install
        bin.install "cserver"
        prefix.install Dir["assets"]
        etc.install Dir["assets"]
        prefix.install_symlink Dir["assets"]
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nomad10101/cloudback/releases/download/v0.0.26/cloudback_Linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e07229f1982cfae8662c94cc1f1c9c645f2841967adc10b242590ef73ca1d7a3"

      def install
        bin.install "cserver"
        prefix.install Dir["assets"]
        etc.install Dir["assets"]
        prefix.install_symlink Dir["assets"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nomad10101/cloudback/releases/download/v0.0.26/cloudback_Linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "1da5d7b04ca8af3d11e5a0a08fe9e854e4e6b531aed136f15fd44100dc216ece"

      def install
        bin.install "cserver"
        prefix.install Dir["assets"]
        etc.install Dir["assets"]
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
    run [opt_bin/"cserver", "--assets-path", opt_prefix/"assets"]
  end
end
